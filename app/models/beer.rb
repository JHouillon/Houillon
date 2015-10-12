class Beer < ActiveRecord::Base

belongs_to :brewrie
has_many :notes
has_many :beers_geeks, through: :notes

	def note
		notes.map{|note| note.value}.sum / notes.size unless notes.empty?
	end
end
