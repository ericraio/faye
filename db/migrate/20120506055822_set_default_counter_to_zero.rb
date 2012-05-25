class SetDefaultCounterToZero < ActiveRecord::Migration
  def up
    Episode.all.each do |episode|
      episode.update_attribute(:counter, 0)
    end
  end

  def down
  end
end
