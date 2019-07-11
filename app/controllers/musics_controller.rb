class MusicsController < ApplicationController

  def index
    musics = RestClient.get "http://ws.audioscrobbler.com/2.0/?method=library.getartists&api_key=9f3a1a78203999bcf242b0c5f2094ce2&limit=100&user=lockster12345&format=json"
    render json: musics
  end
end
