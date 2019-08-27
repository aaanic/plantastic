class PlantsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]
  skip_after_action :verify_authorized
  skip_after_action :verify_policy_scoped, only: [:index]

  def index
    @plants = Plant.all
  end

  def show
    @plant = Plant.find(params[:id])
    # if @user_plant = EnvironmentPlant.create(plant: @plant, environment: current_user.environment)
    #   redirect_to user_dashboard_path
    # else
    #   render :show
    # end
  end
end
