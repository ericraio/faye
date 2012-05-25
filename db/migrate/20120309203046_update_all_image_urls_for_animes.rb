class UpdateAllImageUrlsForAnimes < ActiveRecord::Migration
  def change
    Anime.all.each { |x| x.update_attribute(:image_url, x.image_url.gsub(/\<img  src=\"|\"\>/, '')) }
  end
end
