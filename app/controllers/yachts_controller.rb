class YachtsController < ApplicationController
  before_action :set_yacht, only: [:show, :edit, :update, :destroy]

  def show
    @booking = Booking.new


    @yacht           = Yacht.find(params[:id])
    @bookings       = @yacht.bookings
    @bookings_dates = @bookings.map do |booking|
      {
        from: booking.start_date,
        to:   booking.end_date
      }
    end

  end

  def top
    @yachts = Yacht.order(stars: :desc).take(9)
  end

  def index
    @yachts = Yacht.search_by_rate(params[:search_by_rate])
  end

  def edit
  end

  def new
    @yacht = Yacht.new
  end

  def create
    @yacht = Yacht.new(yacht_params)
    # @yacht.user = current_user
    # @yacht.save!
  end

  def updated
  end

  private

  def set_yacht
    @yacht = Yacht.find(params[:id])
  end

  def yacht_params
    params.require(:yacht).permit(:name, :address, :price, :stars, :search_by_rate)
  end
end
