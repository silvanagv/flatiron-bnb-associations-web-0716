class ListingsController < ApplicationController

  before_action :set_city, :only [:show, :edit, :update, :destroy]

  def index
    @cities=City.all
  end

  def show
    @city=City.find(params[:id])
    @neighborhoods=@city.neighborhoods
  end

  def new
    @city=City.new
    @neighborhoods=Neighborhood.all
  end

  def create
    @city=City.create(city_params)
    redirect_to city_path(@city)
  end

  def edit
  end

  def update
  end

  def delete
  end

  private

  def listing_params
    params.require(:city).permit(:title, :description, :address, :listing_type, :price)
  end

end
