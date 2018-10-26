User.create!(name:  "Example User",
             email: "example@railstutorial.org",
             password:              "11111",
             password_confirmation: "11111",
             admin: true)

99.times do |n|
  name  = Faker::Name.name
  email = "example-#{n+1}@railstutorial.org"
  password = "password"
  User.create!(name:  name,
               email: email,
               password:              password,
               password_confirmation: password)
end
