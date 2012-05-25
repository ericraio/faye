class UpdateDescription < ActiveRecord::Migration
  def change
    Anime.find(60).update_attribute :image_url, '<img src="http://www.gogoanime.com/images/ao-no-exorcist.jpg">'
  end
end
