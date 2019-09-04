class PlantsController < ApplicationController
  skip_before_action :authenticate_user!
  skip_after_action :verify_authorized
  skip_after_action :verify_policy_scoped
  before_action :set_plant, only: [:show, :edit, :update, :destroy]

  def index

    @plants = Plant.all

    user_input = params[:query]
    if user_input
      if !user_input.nil? && !user_input.empty?
        @plants = Plant.search_all_plants(user_input)

      else
        @plants = Plant.all
      end
    end

    @plants = @plants.by_category params[:categories] if params[:categories]
    @plants = @plants.by_height params[:max_height] if params[:max_height]
    @plants = @plants.by_light params[:light_preference] if params[:light_preference]
    @plants = @plants.by_care params[:care_level] if params[:care_level]

    @plants = @plants.sort_by { |p| p.name }


    @categories = []
    Plant.all.each do |p|
      unless @categories.include?(p.category)
        @categories << p.category
      end
    end
    @categories = @categories.uniq

      @max_height = []
    Plant.all.each do |p|
      unless @max_height.include?(p.max_height)
        @max_height << p.max_height
      end
    end
    @max_height = @max_height.uniq.sort

      @light_preference = []
    Plant.all.each do |p|
      unless @light_preference.include?(p.light_preference)
        @light_preference << p.light_preference
      end
    end
    @light_preference = @light_preference.uniq

    @care_level = []
    Plant.all.each do |p|
      unless @care_level.include?(p.care_level)
        @care_level << p.care_level
      end
    end
    @care_level = @care_level.uniq.sort

  end

  def show
    @user_plants = @plant.environment_plants
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
    params.require(:plant).permit(:name, :latin_name, :max_height, :light_preference, :care_level, :remote_image_url, :description, :general, :care)
  end

end
