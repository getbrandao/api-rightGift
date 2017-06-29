require "faker"

FactoryGirl.define do
  factory :list_gifts, class: 'V1::ListGift' do
    user_id {create(:users).id}
    contact_id {create(:contacts).id}
    name {Faker::StarWars.character}
    image {Faker::Lorem.characters(40)}
  end
end
