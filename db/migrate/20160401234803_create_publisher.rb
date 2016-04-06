class CreatePublisher < ActiveRecord::Migration
  def change
    create_table :publishers do |t|
      t.string :name
      t.string :image
    end
  end
end
