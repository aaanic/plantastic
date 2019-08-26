class PagesController < ApplicationController
  def landing_page
  end

  def user_dashboard
    @user_plants = UserPlant.all
  end

end
