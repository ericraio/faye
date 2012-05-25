class RemoveStuffFromUser < ActiveRecord::Migration
  def up
    remove_column :users, :bio
    remove_column :users, :location
    remove_column :users, :gender
  end

  def down
    add_column :users, :bio, :text
    add_column :users, :location, :string
    add_column :users, :gender, :string
  end
end
