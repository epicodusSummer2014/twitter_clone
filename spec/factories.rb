FactoryGirl.define do
  factory :user do
    email "guy@guy.com"
    password "password"
    password_confirmation "password"
  end
end
