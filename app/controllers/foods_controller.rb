class FoodsController < ApplicationController
  def new
		@food = Food.new
  end

  def create
  end

  def edit
  end

	def update
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
end
