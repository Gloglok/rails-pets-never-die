class StuffedAnimalsController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]

  def index
    if params[:query].present?
      if params[:query].is_a? String
        @stuffed_animals = StuffedAnimal.search_by_species(params[:query])
      else
        selected_species = []
        params[:query].each do |selected|
          selected_species << StuffedAnimal.search_by_species(selected)
          @stuffed_animals = selected_species.flatten
        end
      end
    else
      @stuffed_animals = StuffedAnimal.all
    end
    set_markers
  end

  def show
    @stuffed_animal = StuffedAnimal.find(params[:id])
    @reservation = Reservation.new
    @reservations = Reservation.where(stuffed_animal_id: @stuffed_animal.id)
    @reservations_dates = @reservations.map do |reservation|
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
      sleep(5)
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

  def set_markers
    @markers = @stuffed_animals.geocoded.map do |stuffed_animal|
      {
        lat: stuffed_animal.latitude,
        lng: stuffed_animal.longitude,
        info_window: render_to_string(partial: "info_window", locals: { stuffed_animal: stuffed_animal })
      }
    end
  end
end
