class RemoveNoteFromBeer < ActiveRecord::Migration
  def change
    remove_column :beers, :note, :integer
  end
end
