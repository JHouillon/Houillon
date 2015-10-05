class AddBrewrieFromBeer < ActiveRecord::Migration
  def change
    add_reference :beers, :brewrie, index: true
  end
end
