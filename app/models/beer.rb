class Beer < ActiveRecord::Base

belongs_to :brewrie
has_many :notes
has_many :beers_geeks, through: :notes
accepts_nested_attributes_for :notes, allow_destroy: true, reject_if: :all_blank

validates :name, presence: true
validates :description, presence: { in: %w(blanche blonde brune),
	message: "%{value} is not correct value."}
validates_associated :notes

end
