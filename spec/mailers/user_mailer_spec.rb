require "rails_helper"

RSpec.describe UserMailer, :type => :mailer do

  before(:each) do
    DatabaseCleaner.clean
    @user = FactoryGirl.create(:user)
  end

  describe "signup_confirmation" do
    let(:mail) { UserMailer.signup_confirmation(@user) }

    it "renders the headers" do
      expect(mail.subject).to eq("Sign Up Confirmation")
      expect(mail.to).to eq([@user.email])
      expect(mail.from).to eq(["from@example.com"])
    end

    it "renders the body" do
      expect(mail.body.encoded).to match("Thank")
    end
  end

end
