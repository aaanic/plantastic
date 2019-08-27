class EnvironmentPlantsController < ApplicationController
  before_action :find_environment_plant, only: [:show, :edit, :update, :destroy]

  def index
    @environment_plants = EnvironmentPlant.all
  end

  def show
  end

  def new
    @environment_plant = EnvironmentPlant.new
  end

  def create
    @environment_plant = EnvironmentPlant.new(environment_plant_params)
    if @environment_plant.save
      redirect_to environment_plant_path
    else
      render :new
    end
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
    @environment_plant = @environment_plant.find(params[:id])
  end

  def environment_plant_params
    params.require(:environment_plant).permit(:nickname, :environment_id, :plant_id)
  end
end
