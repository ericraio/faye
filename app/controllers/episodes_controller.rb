class EpisodesController < ApplicationController
  before_filter :authenticate_user!, :only => [:comments]

  def report
    respond_to do |format|
      format.js do
        episode = Episode.find(params[:episode_id])
        url = "http://www.gogoanime.com/#{episode.title.parameterize}".gsub(/-episode/, '')

        attempts = 0
        begin
          Scraper::GoGoAnime.new(url, :episode => episode).update_episode
        rescue Exception => e
          puts url = "http://www.gogoanime.com/#{episode.title.parameterize}-#{episode.title.parameterize}".gsub(/-episode/, '')
          attempts += 1
          retry unless attempts > 1
          Rails.logger.info e
        ensure
          episode.update_attribute(:fixed_at, Time.now)
        end

        render :json => {}
      end
    end
  end

  def show
    @episode = Episode.find(params[:id])
    @episode.update_attribute(:counter, @episode.counter + 1)

    @comment = Comment.new

    @previous_episode = Episode.previous(@episode).first
    @next_episode = Episode.next(@episode).first

    @comments = Kaminari.paginate_array(@episode.comments.reverse).page(params[:page]).per(10)
  end

  def comments
    respond_to do |format|
      format.js do
        @comment = Comment.create(:user_id => current_user.id, :episode_id => params[:comment][:episode_id], :comment_body => params[:comment][:comment_body])
      end
    end
  end

end
