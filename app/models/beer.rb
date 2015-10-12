class Beer < ActiveRecord::Base

belongs_to :brewrie
has_many :notes
has_many :beers_geeks, through: :notes
accepts_nested_attributes_for :notes, allow_destroy: true

	def note
		notes.map{|note| note.value}.sum / notes.size unless notes.empty?
	end

	def note= var
		notes << Note.create(value: var, beer: self)
	end

	def beer_geek= bg
		n = notes.last
		n.beer_geek_id = bg
		n.save
	end
end
