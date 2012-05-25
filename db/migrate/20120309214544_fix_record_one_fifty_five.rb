class FixRecordOneFiftyFive < ActiveRecord::Migration
  def up
    Anime.find(155).update_attribute :image_url, 'http://www.gogoanime.com/images/busou-shinki-moon-angel.jpg'
  end

  def down
  end
end
