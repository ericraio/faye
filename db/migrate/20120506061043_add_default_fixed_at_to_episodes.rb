class AddDefaultFixedAtToEpisodes < ActiveRecord::Migration
  def change
    Episode.first(20).each do |episode|
      episode.update_attribute(:fixed_at, Time.now)
    end
  end
end
