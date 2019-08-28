class EnvironmentPlantsController < ApplicationController
  before_action :find_environment_plant, only: [:show, :edit, :update, :destroy]

  def index
    @environment_plants = EnvironmentPlant.all
  end

  def show
  end

  def create
    environment_plant = EnvironmentPlant.new(environment_plant_params)
    plant = Plant.find(environment_plant_params[:plant_id])
    environment = Environment.find(environment_plant_params[:environment_id])
    if environment.nil?
      new_environment = Environment.create(name: current_user.name + "'s jungle")
      environment_plant.environment = new_environment
    else
      environment_plant.environment = environment
    end
    environment_plant.plant = plant
    authorize environment_plant
    environment_plant.save
    redirect_to environment_plant_path(environment_plant.id)
  end

  def edit
  end

  def update
    if @environment_plant.update(environment_plant_params)
      redirect_to environment_plant_path(@environment_plant)
    else
      render :edit
    end
  end

  def destroy
    @environment_plant.destroy
    redirect_to environment_plants_path
  end

  private

  def find_environment_plant
    @environment_plant = EnvironmentPlant.find(params[:id])
    authorize @environment_plant
  end

  def environment_plant_params
    params.require(:environment_plant).permit(:nickname, :environment_id, :plant_id)
  end
end
