# frozen_string_literal: true

require 'posts_source/remote'

class Medium
  cattr_accessor :source

  self.source = PostsSource::Remote

  def initialize(name = nil)
    @client = source.new(name)
  end

  def posts
    @client.user_posts
  end
end
