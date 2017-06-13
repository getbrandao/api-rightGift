FactoryGirl.define do
  factory :users, class: 'V1::User' do
    email 'example@mail.com'
    password 'ExamplePassword'
    password_confirmation 'ExamplePassword'
  end
end
