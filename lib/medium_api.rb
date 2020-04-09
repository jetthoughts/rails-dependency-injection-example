# frozen_string_literal: true

require 'net/http'

class MediumAPI
  def initialize(username)
    @username = username
  end

  def posts
    JSON.parse(
      Net::HTTP.get(
        'api.rss2json.com',
        "/v1/api.json?rss_url=https://medium.com/feed/@#{@username}"
      )
    ).dig('items')
  end
end
