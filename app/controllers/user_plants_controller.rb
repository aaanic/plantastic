class UserPlantsController < ApplicationController
  before_action :find_user_plant, only: [:show, :edit, :update, :destroy]

  def index
    @user_plants = UserPlant.all
  end

  def show
  end

  def new
    @user_plant = UserPlant.new
  end

  def create
    @user_plant = UserPlant.new(user_plant_params)
    if @user_plant.save
      redirect_to user_plant_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @user_plant.update(user_plant_params)
      redirect_to user_plant_path(@user_plant)
    else
      render :edit
    end
  end

  def destroy
    @user_plant.destroy
    redirect_to user_plants_path
  end

  private

  def find_user_plant
    @user_plant = @User_plant.find(params[:id])
  end

  def user_plant_params
    params.require(:user_plant).permit(:nickname, :user_id, :plant_id)
  end
end
