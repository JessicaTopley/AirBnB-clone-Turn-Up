class BookingsController < ApplicationController
  def new
    @flat = Flat.find(params[:flat_id])
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @flat = Flat.find(params[:flat_id])

    # raise
    @booking.user = current_user
    @booking.flat = @flat
    raise
    # @booking.user_id?
    if @booking.save
      redirect_to flat_path(@flat)
    else
      render :new
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:user_id, :flat_id, :date_from, :date_to, :guests)
  end
end
