class PagesController < ApplicationController
 skip_before_action :authenticate_user!, only: :landing_page

  def landing_page
  end

  def results_page
    @plants = Plant.all
  end

  def user_dashboard
    # @user_plants = Plant.all
    @reminder = Reminder.new
    @reminders = Reminder.all
    @environment = current_user.environment
    @environment_plants = current_user.environment.environment_plants
  end

  def plantdoctor
  end
end
