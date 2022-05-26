class YachtsController < ApplicationController
  before_action :set_yacht, only: [:show, :edit, :update, :destroy]
  skip_before_action :authenticate_user!, only: :top

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
    @yachts = Yacht.all

    if params[:address].present?
      @yachts = @yachts.near(params[:address], 100)
    end

    if params[:voyager].present?
      @yachts = @yachts.where("voyager >= ?", params[:voyager])
    end

    if params[:start_date].present? && params[:end_date].present?
      start_date = Date.parse(params[:start_date])
      end_date = Date.parse(params[:end_date])
      @yachts = @yachts.available_for(start_date, end_date)
    end

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

    if @yacht.save
      redirect_to yacht_path(@yacht), notice: 'Yacht was successfully added'
    else
      render :new
    end
  end

  def update
    if @yacht.update(yacht_params)
      redirect_to yacht_path(@yacht), notice: 'Yacht was successfully updated'
    else
      render "edit"
    end
  end

  private

  def set_yacht
    @yacht = Yacht.find(params[:id])
  end

  def yacht_params
    params.require(:yacht).permit(:name, :address, :description, :price, :stars,
                                  :voyager, :coordinates, :photo, photos: [])
  end
end
