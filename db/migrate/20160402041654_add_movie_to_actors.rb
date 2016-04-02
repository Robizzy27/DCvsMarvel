class AddMovieToActors < ActiveRecord::Migration
  def change
    add_reference :actors, :movie, index: true, foreign_key: true
  end
end
