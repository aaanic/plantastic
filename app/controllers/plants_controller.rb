class PlantsController < ApplicationController
  skip_before_action :authenticate_user!
  skip_after_action :verify_authorized
  skip_after_action :verify_policy_scoped

  def index
    @plants = Plant.all
  end

  def show
    @plant = Plant.find(params[:id])
  end
end
