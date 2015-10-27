class Note < ActiveRecord::Base
  belongs_to :beer
  belongs_to :beer_geek


validates :value, inclusion: { in: 0..10,
    message: "%{value} is not correct note."}
end
