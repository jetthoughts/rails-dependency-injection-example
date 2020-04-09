require 'posts_source/fake'

class Medium::Testing
  def self.fake!
    Medium.source = PostsSource::Fake
  end
end
