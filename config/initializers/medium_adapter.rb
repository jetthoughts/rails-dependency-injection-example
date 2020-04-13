# frozen_string_literal: true

require 'posts_source/remote'
require 'medium/testing'

Medium::Testing.fake! if Rails.env.test?
