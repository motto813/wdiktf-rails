require 'rails_helper'

RSpec.describe ShowsController, type: :controller do
  describe 'Test TheMovieDB API' do
    # 254320 is tmdb_id for 'The Lobster'
    let(:movie_name) { "The Lobster" }

    it 'returns a movie object with an accessible name from TheMovieDB API' do
      VCR.use_cassette "movie" do
        search = Tmdb::Search.new
        search.resource("movie")
        search.query(movie_name)
        movie_id = search.fetch[0]["id"]
        movie = Tmdb::Movie.detail(movie_id)
        expect(p movie["original_title"]).to be_a String
      end
    end
  end

  # describe 'GET #search' do
  # end
end
