class ReminderMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.reminder_mailer.reminder.subject
  #
  def reminder
    @user = params[:user] # Instance variable => available in view
    @greeting = "Hi #{@user.first_name}"
    mail(to: @user.email, subject: 'Team Plantastic')
    # This will render a view in `app/views/user_mailer`!
  end

  def test_mail
    mail(
      :subject => 'Hello from Postmark',
      :to  => 'hello@plantastic.live',
      :from => 'hello@plantastic.live',
      :html_body => '<strong>Hello</strong> dear Postmark user.',
      :track_opens => 'true')
  end
end
