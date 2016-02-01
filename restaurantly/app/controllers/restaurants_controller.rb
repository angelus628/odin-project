class RestaurantsController < ApplicationController
  def show
    @restaurant = Restaurant.find_by_id params[:id]

    if @restaurant
      render :show
    else
      flash[:warning] = "El restaurante no existe"
      reditect_to root_path
    end
  end

  def index
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
