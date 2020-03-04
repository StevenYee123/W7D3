FactoryBot.define do
  factory :user do
    username { Faker::GreekPhilosophers.name }
    password { "password" }
  end
end