class ListingsController < ApplicationController

  before_action :set_listing, only: [:show, :edit, :update, :destroy]

  def index
    @listings=Listing.all
  end

  def show
  end

  def new
    @listing=Listing.new
  end

  def create
    @listing=Listing.create(listing_params)
    redirect_to listing_path(@listing)
  end

  def edit
  end

  def update
  end

  def delete
  end

  private

  def listing_params
    params.require(:listing).permit(:title, :description, :address, :listing_type, :price)
  end

  def set_listing
    @listing=Listing.find(params[:id])
  end

end
