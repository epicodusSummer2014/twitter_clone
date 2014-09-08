require 'rails_helper'

describe User do
  before :each do
    DatabaseCleaner.clean
    @user = FactoryGirl.create(:user)
  end

    subject { @user }

  it { should validate_presence_of :email }
  it { should have_many :tweets }
  it { should have_many :followers }
  it { should have_many :followed_users }

  it "sends an email when the user is created" do
    ActionMailer::Base.deliveries.last.to.should eq [@user.email]
  end
end
