namespace :anime do
  desc "Scrub newly episode numbers"
  task :parse_ep_numbers => :environment do
    episodes = Episode.where :episode_number => nil
    episodes.each do |episode|
      episode_number = episode.title.match(/([Ee]pisode)( |  )(\d+)/)
      if episode_number.nil?
        next
      else
        episode.update_attribute :episode_number, episode_number[3]
      end
    end
  end

  desc "Scrub Episodes Titles to update all the episode number field"
  task :parse_all_ep_numbers => :environment do
    Episode.all.each do |episode|
      episode_number = episode.title.match(/([Ee]pisode)( |  )(\d+)/)
      if episode_number.nil?
        next
      else
        episode.update_attribute :episode_number, episode_number[3]
      end
    end
  end

end
