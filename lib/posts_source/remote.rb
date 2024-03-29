require 'medium_api'

module PostsSource
  class Remote
    def initialize(username)
      @client = ::MediumAPI.new(username)
    end

    def user_posts
      @client.posts
    end
  end
end
