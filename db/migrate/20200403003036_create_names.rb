class CreateNames < ActiveRecord::Migration[5.2]
  def change
    create_table :names do |t|
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
