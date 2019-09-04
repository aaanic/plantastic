class ReminderMailer < ApplicationMailer

  def reminder
    @user = User.find(params[:user_id])
    @environment_users = Environment.find(@user.environment_id).users
    env_names = [];
    @environment_users.each do |env|
      env_names << env
    end
     # Instance variable => available in view
    @greeting = "Hi #{env_names.join(", ")}"

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
