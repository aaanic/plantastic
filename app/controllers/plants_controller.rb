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
    @plants = plants.sort_by { |p| p.name }
  end

  def show
    @plant = Plant.find(params[:id])
  end
end
