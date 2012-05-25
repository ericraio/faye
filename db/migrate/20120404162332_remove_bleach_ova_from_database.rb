class RemoveBleachOvaFromDatabase < ActiveRecord::Migration
  def up
    Anime.find_by_title('Bleach Ova').destroy
  end

  def down
  end
end
