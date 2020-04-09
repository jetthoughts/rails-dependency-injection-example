# frozen_string_literal: true

class PostsController < ApplicationController
  def index
    posts = Medium.new('dhh').posts
    render json: posts
  end
end
