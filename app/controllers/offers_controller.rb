class OffersController < ApplicationController
  before_action :set_offer, only: [:show, :destroy, :update, :edit]
  def index
    @offers = Offer.all
  end

  def show
  end

  def edit
  end

  def update
    @offer.update(offer_params)
  end

  def new
    @offer = Offer.new
  end

  def create
    @offer = Offer.new(offer_params)
  end

  def destroy
    @offer.destroy
  end

  private

  def set_offer
    @offer = Offer.find(params[:id])
  end

  def offer_params
    params.require(:offer).permit(:title, :description, :category, :start_time, :end_time)
  end
end
