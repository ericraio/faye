class FixAnimeImageUrl < ActiveRecord::Migration
  def up
    Anime.all.each do |x|
      unless x.image_url.start_with? 'http'
        x.update_attribute :image_url, 'http://www.gogoanime.com' + x.image_url
      end
    end
  end

  def down
  end
end
