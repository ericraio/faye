class FixAnimeSixty < ActiveRecord::Migration
  def up
    Anime.find(60).update_attribute :image_url, 'http://www.gogoanime.com/images/ao-no-exorcist.jpg'
  end

  def down
  end
end
