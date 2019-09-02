class ApplicationMailer < ActionMailer::Base
  default from: 'admin@plantastic.com'

  layout 'mailer'
end
