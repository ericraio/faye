require 'koala'

module WebServices
  class Facebook

    attr_accessor :graph, :oauth

    def initialize(facebook_auth_token)
      @graph = Koala::Facebook::API.new(facebook_auth_token)
      @oauth = Koala::Facebook::OAuth.new(FACEBOOK_APP_ID, facebook_auth_token, 'http://www.fayeanime.com/users/auth/facebook/callback')
    end

    def url_for_auth_code
     @oauth.url_for_oauth_code
    end

    def get_profile(id='me')
      @graph.get_object(id)
    end

    def get_picture(id='me')
      @graph.get_picture(id)
    end

    def get_friend(friend_id)
      @graph.get_object(friend_id)
    end

    def post_to_wall(message)
      @graph.put_wall_post(message)
    end

    def friends
      list = @graph.get_connections("me", "friends")
      friend_hash(list)
    end

    def mutual_friends(friend_id)
      list = @graph.get_connections("me", "mutualfriends/#{friend_id}")
      friend_hash(list)
    end

    def friend_hash(hash)
      hash.inject({}) do |mem, element|
        mem[element['name']] = element['id']
        mem
      end
    end

  end
end
