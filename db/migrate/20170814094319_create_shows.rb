class CreateShows < ActiveRecord::Migration[5.1]
  def change
    create_table :shows do |t|
      t.integer :tmdb_id
      t.timestamps
    end
  end
end
