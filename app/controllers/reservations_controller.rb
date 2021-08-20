class ReservationsController < ApplicationController
  before_action :find_stuffed_animal, only: [:create]
  before_action :find_reservation, only: %i[accept decline]

  def accept
    @reservation.update_attribute(:status, 'Accepté')
  end

  def decline
    @reservation.update_attribute(:status, 'Refusé')
  end

  def create
    @reservation = Reservation.new(reservation_params)
    @reservation.status = 'Attente'
    @reservation.stuffed_animal = @stuffed_animal
    @reservation.user = current_user
    @reservation.total_price = @reservation.total_days * @stuffed_animal.price
    if @reservation.save
      sleep(5)
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
    params.require(:reservation).permit(:start_date, :end_date)
  end
end
