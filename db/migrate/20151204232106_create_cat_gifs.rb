class CreateCatGifs < ActiveRecord::Migration
  def change
    create_table :cat_gifs do |t|
      t.string :title
      t.string :url
      t.integer :score

      t.timestamps null: false
    end
  end
end
