# frozen_string_literal: true

require 'posts_source/medium'

class Medium
  cattr_accessor :source

  self.source = PostsSource::Medium

  def initialize(name = nil)
    @client = source.new(name)
  end

  def posts
    @client.user_posts
  end
end
