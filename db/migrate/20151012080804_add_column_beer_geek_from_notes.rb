class AddColumnBeerGeekFromNotes < ActiveRecord::Migration
  def change
    add_reference :notes, :beer_geek, index: true
  end
end
