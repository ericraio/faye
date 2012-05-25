class HomeController < ApplicationController
  before_filter :main
  before_filter :dashboard

  def index
    if signed_in?
      render :action => :dashboard
    else
      render :action => :main
    end
  end

  def main
    @featured_anime= []
    4.times do
      rand_id = rand(Anime.count)
      rand_id = 1 if rand_id.eql?(0)
      @featured_anime << Anime.find(rand_id)
    end
  end

  def dashboard
    @new_anime = Episode.last(20)
    @fixed_anime = Episode.find :all, :order => 'fixed_at DESC', :limit => 20
    @popular_anime = Episode.find :all, :order => 'counter DESC', :limit => 20
  end

end
