class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :title
      t.references :director
      t.string :image
      t.string :synopsis
      t.string :runtime
      t.string :budget
      t.string :opening
    end
  end
end
