class PagesController < ApplicationController

  def landing_page
  end

  def results_page
    @plants = Plant.all
  end

  def user_dashboard
    @user_plants = UserPlant.all
  end

end