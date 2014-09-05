require 'rails_helper'

describe User do
  before :each do
    DatabaseCleaner.clean
    @user = FactoryGirl.create(:user)
  end
  it "sends an email when the user is created" do
    ActionMailer::Base.deliveries.last.to.should eq [@user.email]
  end
end
