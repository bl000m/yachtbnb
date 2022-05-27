class BookingsController < ApplicationController
  before_action :set_booking, only: [:show, :edit, :update, :destroy]

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.yacht = Yacht.find(params[:yacht_id])

    if @booking.save
      redirect_to booking_path(@booking), notice: 'Yacht was successfully reserved.'
    else
      render :new
    end
  end

  def show
  end

  def index
    # user = @bookings.current_user
    @bookings = current_user.bookings
  end

  def edit
  end

  def update
    if @booking.update(booking_params)
      redirect_to @booking, notice: 'Booking was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @booking.destroy
    redirect_to @yacht, notice: 'Booking was successfully destroyed.'
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :index, :voyager)
  end
end
