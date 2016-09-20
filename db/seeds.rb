User.create! name: "User",
             email: "user@gmail.com",
             password: "password",
             password_confirmation: "password"

User.create! name: "Admin User",
             email: "admin@gmail.com",
             password: "password",
             password_confirmation: "password",
             admin: true
# Subjects
30.times do
  name  = Faker::Name.name
  description = Faker::Lorem.sentence
  Subject.create! name: name, description: description, duration: 60, number_of_questions: 5
end
