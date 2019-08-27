class RemindersController < ApplicationController
  def index
    @reminders = policy_scope(Reminder)
  end

  def show
    find_reminder
  end

  def new
    @reminder = Reminder.new
    authorize @reminder
  end

  def create
    @reminder = Reminder.new(reminder_params)
    @reminder.user = current_user
    @reminder.environment = current_user.environment
    authorize @reminder
    if @reminder.save
      redirect_to user_dashboard_path
    else
      render :new
    end
  end

  def edit
    find_reminder
    authorize @reminder
  end

  def update
    find_reminder
    # authorize @reminder
    if @reminder.update(reminder_params)
      redirect_to reminder_path(@reminder)
    else
      render :edit
    end
  end

  def destroy
    find_reminder
    @reminder.destroy
    redirect_to user_dashboard_path(@reminder)
    authorize @reminder
  end

  private

  def find_reminder
    @reminder = Reminder.find(params[:id])
  end

  def reminder_params
    @reminder = params.require(:reminder).permit(:date, :name, :description)
  end
end
