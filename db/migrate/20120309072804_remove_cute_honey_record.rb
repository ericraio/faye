class RemoveCuteHoneyRecord < ActiveRecord::Migration
  def up
    Anime.find(1106).destroy
  end

  def down
  end
end
