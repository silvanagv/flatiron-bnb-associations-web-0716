class NeighborhoodsController < ApplicationController

  #before_action :set_neighborhood, only: [:show, :edit, :update, :destroy]

  def index
    @neighborhoods=Neighborhood.all
  end

  def show
    @neighborhood=Neighborhood.find(params[:id])
  end

  def new
    @neighborhood=Neighborhood.new
  end

  def create
    @neighborhood=Neighborhood.create(neighborhood_params)
    redirect_to neighborhood_path(@neighborhood)
  end

  def edit
    @neighborhood=Neighborhood.find(params[:id])
  end

  def update
    @neighborhood=Neighborhood.update(neighborhood_params)
  end

  def delete
  end

  private

  def neighborhood_params
    params.require(:neighborhood).permit(:name)
  end
end
