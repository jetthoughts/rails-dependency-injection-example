# frozen_string_literal: true

module PostsSource
  class Fake
    def initialize(username)
      @client = OpenStruct.new(
        posts: [
          {
            title: 'Signal v Noise exits Medium[Fake adapter]',
            pubDate: '2019-02-11 15:51:56',
            link: 'https://medium.com/signal-v-noise/signal-v-noise-exits-medium-56c483d827fc?source=rss-54bcbf647830------2',
            guid: 'https://medium.com/p/56c483d827fc',
            author: 'DHH',
            thumbnail: 'https://medium.com/_/stat?event=post.clientViewed&referrerSource=full_rss&postId=56c483d827fc',
            description: 'Description',
            content: 'Content',
            enclosure: {},
            categories: ['medium']
          }
        ]
      )
    end

    def user_posts
      @client.posts
    end
  end
end
