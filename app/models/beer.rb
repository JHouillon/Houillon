class Beer < ActiveRecord::Base

belongs_to :brewrie
has_many :beers

	def note=var
		if var.to_i < 0
			super 0
		elsif var.to_i >10
			super 10
		else
			super var
		end

	end
end
