FactoryGirl.define do
  factory :users, class: 'User::User' do
    name 'ExampleUser'
    password_digest 'ExamplePasswd'
  end
end
