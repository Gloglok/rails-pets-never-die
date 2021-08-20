class DashboardsController < ApplicationController
  def show
    @user = current_user
    @reservations = @user.reservations
    @stuffed_animals = @user.stuffed_animals
    @owner_reservations = @user.owner_reservations
    p "------------------------------------------------------"
    p @owner_reservations
    p "------------------------------------------------------"
  end
end
