class RemoveTableHasEasyThings < ActiveRecord::Migration
  def up
    drop_table :has_easy_things
  end

  def down
  end
end
