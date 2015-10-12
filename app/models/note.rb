class Note < ActiveRecord::Base
  belongs_to :beer
  belongs_to :beer_geek
end
