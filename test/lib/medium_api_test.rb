# frozen_string_literal: true

require 'test_helper'

class MediumApiTest < ActiveSupport::TestCase
  def test_query_returns_array_of_articles
    VCR.use_cassette("articles") do
      response = MediumAPI.new('jetthoughts').posts

      assert_match "Things that remote teams expect from the product owner", response.first['title']
    end
  end
end
