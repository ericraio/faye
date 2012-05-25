class AnimesController < ApplicationController
  autocomplete :episode, :title, :full => true

  def index
    if params[:search].present?
      return @animes = Anime.search(params[:search])
    end

    if params[:filter] == 'num'
      @animes = Anime.find_by_sql('SELECT * FROM animes WHERE ( title REGEXP "^([0-9]|[.])") ORDER BY title')
    elsif params[:filter]
      @animes = Anime.all :conditions => ["title LIKE ?", "#{params[:filter]}%"], :order => 'title ASC'
    else
      @animes = Anime.all :conditions => ["title LIKE ?", "A%"], :order => 'title ASC'
    end
  end

  def show
    @anime ||= Anime.find(params[:id])
    if params[:search].present?
      anime = Anime.find params[:id]
      @search = Episode.search("#{anime.title} #{params[:search]}")
      return @episodes = @search
    end

    if params[:sort].eql?('asc')
      @episodes = Kaminari.paginate_array(Episode.where(:anime_id => @anime.id).order('episode_number asc')).page(params[:page]).per(20)
    else
      @episodes = Kaminari.paginate_array(Episode.where(:anime_id => @anime.id).order('episode_number desc')).page(params[:page]).per(20)
    end
  end

  def search
    if params[:search].present?
      @search = ThinkingSphinx.search(params[:search])
    end
  end

end
