class ShowsController < ApplicationController
  def index
  end

  def search
    @search = Tmdb::Search.new
    @search.resource("movie")
    @search.query(params[:show_name])
    p @movie_id = @search.fetch[0]["id"]
    p @movie = Tmdb::Movie.detail(@movie_id)
    @cast = Tmdb::Movie.casts(@movie_id)[0, 3]
    render 'show'
  end
end
