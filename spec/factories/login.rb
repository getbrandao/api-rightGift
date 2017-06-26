require 'faker'

FactoryGirl.define do
  factory :login, class: 'V1::User' do
    email {Faker::Internet.email}
    password {Faker::Internet.password(8)}
  end
end
