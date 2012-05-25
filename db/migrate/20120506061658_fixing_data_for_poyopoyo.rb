class FixingDataForPoyopoyo < ActiveRecord::Migration
  def up
    Episode.find_by_title('Poyopoyo Kansatsu Nikki Episode 9').destroy rescue nil
    Episode.find_by_title('Poyopoyo Kansatsu Nikki Episode 8').destroy rescue nil
  end

  def down
  end
end
