class UserMailer < ActionMailer::Base
  default from: "from@example.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.signup_confirmation.subject
  #
  def signup_confirmation(user)
    @user = user
    @greeting = "Hi"

    mail to: user.email, subject: "Sign Up Confirmation"
  end

  def tag(user)
    @user = user
    mail to: user.email, subject: "You were tagged in a tweet!"
  end
end
