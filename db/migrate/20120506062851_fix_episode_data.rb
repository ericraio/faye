class FixEpisodeData < ActiveRecord::Migration
  def up
    Episode.find_by_title('Nisemonogatari Episode 9').destroy rescue nil
  end

  def down
  end
end
