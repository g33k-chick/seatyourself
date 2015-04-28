class ReservationsController < ApplicationController
  before_filter :ensure_logged_in, only: [:create, :destroy]
  before_filter :load_restaurant

  def show
  	@reservation = Reservation.find(params[:id])
  end

  def create
  	@reservation = @restaurant.reservations.build(reservation_params)
  	@reservation.user = current_user

  	if @reservation.save
  		redirect_to restaurants_path, notice: 'Reservation created successfully'
  	else
  		redirect_to restaurant_path(@restaurant), alert: 'No available seats available for that '

  	end
  end

  def destroy
  	@reservation = Reservation.find(params[:id])
  	@reservation.destroy
  end

  private

  def reservation_params
  	params.require(:reservation).permit(:restaurant_id, :user_id, :time_slot, :party_size)
  end

  def load_restaurant
  	@restaurant = Restaurant.find(params[:restaurant_id])
  end

end
