require "faker"

FactoryGirl.define do
  factory :contacts, class: 'V1::Contact' do
    user_id {create(:users).id}
    name {Faker::Name.name}
    social_kind_id {create(:social_kinds).id}
    profile {Faker::Lorem.characters(40)}
    active {Faker::Boolean.boolean}
  end
end
