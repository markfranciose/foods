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
		if params[:food]
			@foods = Food.search(params[:food])
		else
			@foods = Food.all
		end
  end
end
