namespace :anime do

  namespace :go_go_anime do
    desc "Scrape the latest anime series from GoGoAnime"
    task :get_latest_series => :environment do
      anime_list = Hpricot(open('lib/scraper/lists/og_go_go_anime', 'r') { |f| f.read })
      masterlist = []

      (anime_list/:li/:a).each do |series|
        anime = [series.inner_text, series[:href]]
        masterlist << anime
      end

      masterlist.each do |anime|
        begin
          series = Anime.create!(title: anime.first)
        rescue
          series = Anime.find_by_title!(anime.first)
        end

        Scraper::GoGoAnime.new(anime.last, series.id, series).fetch_anime
      end
    end

    desc "Scrape the latest anime episodes from GoGoAnime"
    task :get_latest_episodes => :environment do
      anime_list = Hpricot(open('lib/scraper/lists/og_go_go_anime', 'r') { |f| f.read })
      masterlist = []

      (anime_list/:li/:a).each do |series|
        anime = [series.inner_text, series[:href]]
        masterlist << anime
      end

      masterlist.each do |anime|
        begin
          series = Anime.create!(title: anime.first)
        rescue
          series = Anime.find_by_title!(anime.first)
        end

        Scraper::GoGoAnime.new(anime.last, :id => series.id, :series => series).fetch_episodes
      end
    end
  end

end
