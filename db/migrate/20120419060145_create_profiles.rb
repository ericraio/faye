class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :user_id
      t.text :bio

      t.timestamps
    end
  end
end
