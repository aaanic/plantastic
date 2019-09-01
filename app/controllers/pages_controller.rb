class PagesController < ApplicationController
 skip_before_action :authenticate_user!, only: :landing_page

  def landing_page
  end

  def results_page
    @plants = Plant.all
  end

  def user_dashboard
    # @user_plants = Plant.all
    @reminders = Reminder.all
    @environment = current_user.environment
    @environment_plants = current_user.environment.environment_plants

    # @reminder = Reminder.new
    # @reminder.user = current_user
    # @reminder.environment = current_user.environment
    # authorize @reminder
    # if @reminder.save
    #   redirect_to dashboard_path
    # else
    #   render :new
    # end
  end

  # private

  # def reminder_params
  #   @reminder = params.require(:reminder).permit(:date, :name, :description, :frequency)
  # end
end
