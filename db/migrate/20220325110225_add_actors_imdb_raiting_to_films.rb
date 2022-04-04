class AddActorsImdbRaitingToFilms < ActiveRecord::Migration[6.1]
  def change
    add_column :films, :actors, :string
    add_column :films, :imdb_raiting, :float
  end
end
