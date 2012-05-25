class FixAnimeDesc < ActiveRecord::Migration
  def up
    Anime.all.each do |x|
      x.update_attributes :description => x.description.gsub('Plot Sumary:', ''), :image_url => x.image_url.gsub('http://www.gogoanime.com<img src="', '')
    end
  end

  def down
  end
end
