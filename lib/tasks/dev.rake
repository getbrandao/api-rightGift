namespace :dev do
  desc "Create some faker record in database."
  task setup: :environment do
    # then, whenever you need to clean the DB
    %x(rails db:drop db:create db:migrate)

    puts "Creating the records from Users Model"

    10.times do |i|
      User::User.create!(
        name: Faker::Name.name,
        password_digest: BCrypt::Password.create(Faker::Number.number(10))
      )
    end

  end
end
