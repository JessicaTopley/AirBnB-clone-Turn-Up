class BookingsController < ApplicationController
  def new
    @flat = Flat.find(params[:flat_id])
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @flat = Flat.find(params[:flat_id])

    @booking.user = current_user
    @booking.flat = @flat
    @booking.user_id?
    if @booking.save
      redirect_to pages_profile_path
    else
      render :new
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to pages_profile_path
  end

  private

  def booking_params
    params.require(:booking).permit(:user_id, :flat_id, :date_from, :date_to, :guests)
  end
end
