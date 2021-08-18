class StuffedAnimalsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @stuffed_animals = StuffedAnimal.all
    @markers = @stuffed_animals.geocoded.map do |stuffed_animal|
      {
        lat: stuffed_animal.latitude,
        lng: stuffed_animal.longitude,
        info_window: render_to_string(partial: "info_window", locals: { stuffed_animal: stuffed_animal })
      }
    end
  end

  def show
    @stuffed_animal = StuffedAnimal.find(params[:id])
    @reservation = Reservation.new
    @reservations = Reservation.where(stuffed_animal_id: @stuffed_animal.id)
    @reservation_dates = @reservations.map do |reservation|
      {
        from: reservation.start_date,
        to: reservation.end_date
      }
    end
  end

  def new
    @stuffed_animal = StuffedAnimal.new
  end

  def create
    @stuffed_animal = StuffedAnimal.new(stuffed_animal_params)
    @stuffed_animal.user = current_user
    if @stuffed_animal.save
      redirect_to stuffed_animal_path(@stuffed_animal)
    else
      render :new
    end
  end

  private

  def stuffed_animal_params
    params.require(:stuffed_animal).permit(:name, :species, :user_id, :description,
                                           :rebirth_date, :price, :weight, :address, :photo)
  end
end
