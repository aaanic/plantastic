class PlantsController < ApplicationController
  skip_before_action :authenticate_user!
  skip_after_action :verify_authorized
  skip_after_action :verify_policy_scoped
  before_action :set_plant, only: [:show, :edit, :update, :destroy]

  def index
    user_input = params[:query]
    if user_input
      plants = Plant.search_all_plants(user_input)
    else
      plants = Plant.all
    end
    @plants = plants.sort_by { |p| p.name }
  end

  def show
  end

  def new
    @plant = Plant.new
  end

  def create
    @plant = Plant.new(plant_params)
    authorize @plant
    @plant.save
    if @plant.save
      redirect_to plants_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @plant.update(plant_params)
      redirect_to plant_path(@plant)
    else
      render :edit
    end
  end

  def destroy
    @plant.destroy
    redirect_to plants_path
  end

private
  def set_plant
    @plant = Plant.find(params[:id])
  end

  def plant_params
    params.require(:plant).permit(:name, :latin_name, :max_height, :light_preference, :care_level, :remote_image_url)
  end

end
