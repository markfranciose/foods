class Food < ApplicationRecord

	def self.search(search_term)
		Food.where("name ILIKE ?", "%#{search_term}%")
	end

end
