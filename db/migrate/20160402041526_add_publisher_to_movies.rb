class AddPublisherToMovies < ActiveRecord::Migration
  def change
    add_reference :movies, :publisher, index: true, foreign_key: true
  end
end
