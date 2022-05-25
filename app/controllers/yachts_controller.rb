class YachtsController < ApplicationController
  before_action :set_yacht, only: [:show, :edit, :update, :destroy]

  def show
  end

  def top
    @yachts = Yacht.order(stars: :desc).take(9)
  end

  def index
    @yachts = Yacht.search_by_rate(params[:search_by_rate])
    @markers = @yachts.geocoded.map do |yacht|
      {
        lat: yacht.latitude,
        lng: yacht.longitude,
        info_window: render_to_string(partial: "info_window", locals: { yacht: yacht }),
        image_url: helpers.asset_url("boat")
      }
    end
  end

  def edit
  end

  def new
    @yacht = Yacht.new
  end

  def create
    @yacht = Yacht.new(yacht_params)
    @yacht.user = current_user
    @yacht.save!
  end

  def updated
  end

  private

  def set_yacht
    @yacht = Yacht.find(params[:id])
  end

  def yacht_params
    params.require(:yacht).permit(:name, :address, :price, :stars, :voyager, :coordinates, :search_by_rate)
  end
end
