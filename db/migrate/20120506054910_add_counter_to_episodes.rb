class AddCounterToEpisodes < ActiveRecord::Migration
  def change
    add_column :episodes, :counter, :int
  end
end
