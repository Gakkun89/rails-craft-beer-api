class ChangeAbvToFloatInBeers < ActiveRecord::Migration[5.2]
  def change
    change_column :beers, :abv, :float, using: 'abv::double precision'
  end
end
