require 'mechanize'

$mech = Mechanize.new
$mech.user_agent_alias = 'Mac Safari'

class Scraper::AnimeDreaming
  def initialize(url, id, series)
    @mech = $mech.get(url)
    @anime_id = id
    @series = series
  end

  def fetch_anime
  end

  def fetch_episodes
    page = @mech
    links = page.links

    links.each do |link|
      begin
        page = link.click
        title = page.search('h1').text
        video = page.search('p embed').to_s
        unless video.empty?
          begin
            episode = Episode.create!(:title => title, :embed_url => video, :anime_id => @anime_id)
          rescue
            episode = Episode.find_by_title(title)
            if episode.anime_id.nil?
              episode.update_attributes(:anime_id => @anime_id)
            end
          end
        end
      rescue Exception => e
        puts e
      end
    end

    unless page.link_with(:text => 'Next').nil?
      next_page = page.link_with(:text => 'Next').click
      next_links = next_page.links
      fetch_episodes(next_page, next_links)
    end
  end

end
