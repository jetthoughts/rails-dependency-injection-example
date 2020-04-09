# frozen_string_literal: true

require 'posts_source/medium'
require 'medium/testing'

Medium::Testing.fake! if Rails.env.test?
