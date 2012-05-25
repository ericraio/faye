require 'mechanize'

$mech = Mechanize.new
$mech.user_agent_alias = 'Mac Safari'


class Scraper::GoGoAnime

  def initialize(url, options={})
    @mech = $mech.get(url)
    @anime_id = options[:id]
    @series = options[:series]
    @episode = options[:episode]
  end

  def fetch_anime
    begin
      desc = @mech.search('.catdescription').text
      image = @mech.search('.catdescription img').to_s
      @series.update_attributes(:description => desc.squeeze.strip.gsub('Plot Sumary:', ''),:image_url => image.gsub("class\=\"alignleft\" style=\"padding-right\: 7px\"", "").gsub('<img  src="', '').gsub('">', ''))

      unless @series.image_url.start_with? 'http'
        @series.update_attribute :image_url, 'http://www.gogoanime.com' + @series.image_url
      end
    rescue Exception => e
      puts e
    end
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

  def update_episode
    video = @mech.search('p embed').to_s
    unless video.empty?
      @episode.update_attributes(:embed_url => video)
    end
  end

end
