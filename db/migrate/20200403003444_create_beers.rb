class CreateBeers < ActiveRecord::Migration[5.2]
  def change
    create_table :beers do |t|
      t.string :name
      t.string :brewery
      t.string :style
      t.string :abv
      t.string :desc
      t.integer :ibu
      t.float :rating
      t.string :image

      t.timestamps
    end
  end
end
