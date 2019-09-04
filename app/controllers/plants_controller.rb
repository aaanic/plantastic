class PlantsController < ApplicationController
  skip_before_action :authenticate_user!
  skip_after_action :verify_authorized
  skip_after_action :verify_policy_scoped
  before_action :set_plant, only: [:show, :edit, :update, :destroy]

  def index
      @categories = []
    Plant.all.each do |p|
      unless @categories.include?(p.category)
        @categories << p.category
      end
    end

    @categories = @categories.uniq

      @max_heights = []
    Plant.all.each do |p|
      unless @max_heights.include?(p.max_height)
        @max_heights << p.max_height
      end
      @max_heights.uniq!
    end

      @light_preference = []
    Plant.all.each do |p|
      unless @light_preference.include?(p.light_preference)
        @light_preference << p.light_preference
      end
      @light_preference.uniq!
    end

    user_input = params[:query]
    if !user_input.nil? && !user_input.empty?
      plants = Plant.search_all_plants(user_input)
    else
      plants = Plant.all
    end
    @plants = plants.sort_by { |p| p.name }


    if params.include?(:categories) && params.include?(:max_heights) && params.include?(:light_preference)
      filter_cats = params[:categories]
      filter_heights = params[:max_heights]
      filter_light = params[:light_preference]

      filter_inputs = filter_cats + filter_heights + filter_light
    elsif params.include?(:categories) && params.include?(:max_heights)
      filter_cats = params[:categories]
      filter_heights = params[:max_heights]

      filter_inputs = filter_cats + filter_heights
    elsif params.include?(:categories) && params.include?(:light_preference)
      filter_cats = params[:categories]
      filter_light = params[:light_preference]

      filter_inputs = filter_cats + filter_light
    elsif params.include?(:max_heights) && params.include?(:light_preference)
      filter_heights = params[:max_heights]
      filter_light = params[:light_preference]

      filter_inputs = filter_heights + filter_light
    elsif params.include?(:categories)
      filter_cats = params[:categories]

      filter_inputs = filter_cats
    elsif params.include?(:max_heights)
      filter_heights = params[:max_heights]

      filter_inputs = filter_heights
    elsif params.include?(:light_preference)
      filter_light = params[:light_preference]

      filter_inputs = filter_light
    end

    def cats_params
      filtered_plants = []
      params[:categories].each do |cat|
        filtered_plants += @plants.select { |plant| plant.category == cat }
      end
      filtered_plants
    end

    def heights_params
      filtered_plants = []
      params[:max_heights].each do |height|
        filtered_plants += @plants.select { |plant| plant.max_height == height }
      end
      filtered_plants
    end

    def light_params
      filtered_plants = []
      params[:light_preference].each do |light|
        filtered_plants += @plants.select { |plant| plant.light_preference == light }
      end
      filtered_plants
    end

    if filter_inputs.nil?
      @plants = plants.sort_by { |p| p.name }

    elsif filter_inputs == filter_cats
      @plants = cats_params

    elsif filter_inputs == filter_heights
      @plants = heights_params

    elsif filter_inputs == filter_light
      @plants = light_params

    elsif filter_inputs == filter_cats + filter_heights
      @plants = cats_params + heights_params
      @plants.uniq!

    elsif filter_inputs == filter_cats + filter_heights
      @plants = cats_params + light_params
      @plants.uniq!

    elsif filter_inputs == filter_cats + filter_heights
      @plants = heights_params + light_params
      @plants.uniq!

    elsif filter_inputs == filter_cats + filter_heights + filter_light
      @plants = cats_params + heights_params + light_params
      @plants.uniq!

    end

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
    params.require(:plant).permit(:name, :latin_name, :max_height, :light_preference, :care_level, :remote_image_url, :general, :care)
  end

end
