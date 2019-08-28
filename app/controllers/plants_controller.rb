class PlantsController < ApplicationController
  skip_before_action :authenticate_user!
  skip_after_action :verify_authorized
  skip_after_action :verify_policy_scoped

  def index
    user_input = params[:query]
    if user_input
      plants = Plant.search_all_plants(user_input)
    else
      plants = Plant.all
    end
    @plants = plants.order(created_at: :desc)
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
