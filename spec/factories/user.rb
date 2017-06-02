FactoryGirl.define do
  factory :user, class: 'User::User' do
    name 'ExampleUser'
    passwd 'ExamplePasswd'
  end
end
