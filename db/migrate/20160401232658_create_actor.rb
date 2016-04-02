class CreateActor < ActiveRecord::Migration
  def change
    create_table :actors do |t|
      t.string :name
      t.string :image
    end
  end
end
