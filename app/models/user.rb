class User < ActiveRecord::Base

  has_secure_password

  validates_uniqueness_of :email

  after_create :send_welcome_message

  def send_welcome_message
    UserMailer.signup_confirmation(self).deliver
  end
end
