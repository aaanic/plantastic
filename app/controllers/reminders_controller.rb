class RemindersController < ApplicationController


  before_action :skip_authorization, only: :stop_reminders


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
      redirect_to dashboard_path
    else
      render :new
    end
  end

  def edit
    find_reminder
  end

  def update
    find_reminder
    if @reminder.update(reminder_params)
      redirect_to dashboard_path
    else
      render :edit
    end
  end

  def stop_reminders
    Sidekiq::ScheduledSet.new.clear
    redirect_to dashboard_path
  end

  def destroy
    find_reminder
    @reminder.destroy
    redirect_to dashboard_path

  end

  private

  def find_reminder
    @reminder = Reminder.find(params[:id])
    authorize @reminder
  end

  def reminder_params
    @reminder = params.require(:reminder).permit(:weekday, :hours, :name, :description, :frequency)
  end
end
