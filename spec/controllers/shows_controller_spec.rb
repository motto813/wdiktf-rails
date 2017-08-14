require 'rails_helper'

RSpec.describe ShowsController, type: :controller do
  describe 'Test TheMovieDB API' do
    # 254320 is tmdb_id for 'The Lobster'
    let(:movie_id) { 254320 }

    it 'returns a movie object with an accessible name from TheMovieDB API' do
      VCR.use_cassette "movie" do
        movie = Tmdb::Movie.detail(movie_id)
        expect(p movie["original_title"]).to be_a String
      end
    end
  end

  # describe 'GET #search' do
  # end
end
