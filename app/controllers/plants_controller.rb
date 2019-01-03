class PlantsController < ApplicationController

  def index
    @plants = Plant.all
  end

  def show
    @plant = Plant.find(params[:id])
  end

  def new
    @plant = Plant.new
  end

  def edit
  end


  def create
    @plant = Plant.new(plant_params)

    if @plant.save
      redirect_to @plant
    else
      render 'new'
    end
  end

  def update
  end

  def destroy
  end

  private

  def plant_params
    params.require(:plant).permit(:name, :species, :age, :last_potted_date, :last_rotated_date, :notes)
  end

end
