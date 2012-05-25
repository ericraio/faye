class CreateEpisodesReports < ActiveRecord::Migration
  def change
    create_table :episodes_reports do |t|
      t.integer :episode_id
      t.string :description

      t.timestamps
    end
  end
end
