# frozen_string_literal: true

require 'test_helper'

class PostsControllerTest < ActionDispatch::IntegrationTest

  def test_index_returns_success_status
    get posts_url

    assert_response :success
  end

  def test_index_returns_posts
    get posts_url

    assert_equal 'Signal v Noise exits Medium[Fake adapter]', JSON.parse(response.body)[0]['title']
  end
end
