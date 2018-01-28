class FoodsController < ApplicationController
  def new
		@food = Food.new
  end

  def create
		@food = Food.create(food_params)
		redirect_to foods_path
  end

  def edit
		@food = Food.find(params[:id])
  end

	def update
		@food = Food.find(params[:id])
		if @food.update_attributes(food_params)
			redirect_to foods_path
		else
			render 'edit'
		end
	end

  def show
  end

  def index
		# MPF-todo - will need to write a pagination method
		if params[:food]
			@foods = Food.search(params)
		else
			@foods = Food.all
		end
  end

	private

	def food_params
		params.require(:food).permit(:name, :calories, :protein, :carbs, :fiber)
	end
end
