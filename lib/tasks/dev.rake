namespace :dev do
  desc "Configure the application for development"
  task setup: :environment do
    puts "Creating 100 users"
    100.times do |user| 
      User.create!(
        name: Faker::Name.name,
        password: "password",
        email: Faker::Internet.email,
        cpf: Faker::IDNumber.brazilian_citizen_number,
      )
    end
    puts "100 users created"
  end
end
