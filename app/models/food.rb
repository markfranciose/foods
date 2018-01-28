class Food < ApplicationRecord

	def self.search(search_params)
		search_term = search_params[:food]
		search_matches = Food.where("name ILIKE ?", "%#{search_term}%")

		if search_params.include? :protein_positive
			return search_matches.select do |food|
				food.calories / food.protein <= 10 if food.calories && food.protein
			end
		end

		search_matches
	end

	def protein_positive?(food)

	end

end
