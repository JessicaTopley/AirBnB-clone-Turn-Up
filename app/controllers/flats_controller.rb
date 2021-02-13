class FlatsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index
  before_action :set_flat, only: [:show, :edit, :update, :destroy]

  def index
    @flats = Flat.all
  end

  def new
    @flat = Flat.new
  end

  def create
    @flat = Flat.new(flat_params)
    if @flat.save
      redirect_to @flat
    else
      render :new
    end
  end

  def show
    @booking = Booking.new
  end

  def destroy
    @flat.destroy
    redirect_to flats_path
  end

  def edit
  end

  def update
    if @flat.update(flat_params)
      redirect_to @flat
    else
      render :edit
    end
  end

  private

  def flat_params
    params.require(:flat).permit(:name, :address, :description, :occupancy, :user_id)
  end

  def set_flat
      @flat = Flat.find(params[:id])
  end

end
