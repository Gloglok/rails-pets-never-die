class ReservationsController < ApplicationController
  before_action :find_stuffed_animal, only: [:create]
  before_action :find_reservation, only: %i[accept decline]

  def accept
    @reservation.status = 'Accepted'
  end

  def decline
    @reservation.status = 'Declined'
  end

  def create
    @reservation = Reservation.new(reservation_params)
    @reservation.status = 'Pending'
    @reservation.stuffed_animal = @stuffed_animal
    @reservation.user = current_user
    if @reservation.save
      redirect_to dashboard_path
    else
      render 'stuffed_animals/show'
    end
  end

  private

  def find_reservation
    @reservation = Reservation.find(params[:id])
  end

  def find_stuffed_animal
    @stuffed_animal = StuffedAnimal.find(params[:stuffed_animal_id])
  end

  def reservation_params
    params.require(:reservation).permit(:start_date, :end_date,
                                        :status, :total_price)
  end
end
