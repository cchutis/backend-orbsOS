require 'rest-client'
require 'JSON'

class PostsController < ApplicationController

  def index
    dummy_posts = RestClient.get "https://www.reddit.com/api/v1/me/", { 'Client-ID': "KSBb4Mbw5vmf9Q"}
    posts = JSON.parse(dummy_posts)
    render json: posts
  end

end
