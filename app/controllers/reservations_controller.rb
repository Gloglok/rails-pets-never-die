class ReservationsController < ApplicationController
  def create
    @reservation = Reservation.new(reservation_params)
    @user = User.find(params[:user_id])
    @stuffed_animal = StuffedAnimal.find(params[:stuffed_animal_id])
    @reservation.user = @user
    @reservation.stuffed_animal = @stuffed_animal
    if @reservation.save
      redirect_to dashboard_path
    else
      render 'stuffed_animals/show'
    end
  end

  private

  def reservation_params
    params.require(:reservation).permit(:start_date, :end_date,
                                        :status, :total_price)
  end
end
