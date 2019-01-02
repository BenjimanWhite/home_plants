class PlantsController < ApplicationController

  def new
  end

  def create
    @plant = Plant.new(plant_params)

    @plant.save

    redirect_to @plant
  end

  def index
  end


  private

  def plant_params
    params.require(:plant).permit(:name, :species, :age, :last_potted_date, :last_rotated_date, :notes)
  end

end
