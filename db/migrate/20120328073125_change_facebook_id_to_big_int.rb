class ChangeFacebookIdToBigInt < ActiveRecord::Migration
  def up
    change_column :users, :facebook_id, :bigint
    change_column :users, :sign_in_count, :bigint
  end

  def down
  end
end
