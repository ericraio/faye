class AddFixedAtToEpisode < ActiveRecord::Migration
  def change
    add_column :episodes, :fixed_at, :datetime rescue nil
  end
end
