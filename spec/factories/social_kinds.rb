require "faker"

FactoryGirl.define do
  factory :social_kinds, class: 'V1::SocialKind' do
    name {Faker::StarWars.planet}
  end
end
