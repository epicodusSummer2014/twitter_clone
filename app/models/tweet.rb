class Tweet < ActiveRecord::Base
  belongs_to :user

  after_create :check_tags

  def check_tags
    user = User.basic_search(self.content).first
    if user
      UserMailer.tag(user).deliver
    end
  end
end
