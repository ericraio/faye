class AddInfoToUsers < ActiveRecord::Migration
  def change
    add_column :users, :bio, :text

    add_column :users, :locale, :string

    add_column :users, :gender, :string

    add_column :users, :location, :string

  end
end
