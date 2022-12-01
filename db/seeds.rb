
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "hello"
Project.destroy_all
user = User.create(email: "a.n@mail.com", password: "123456")
Project.create!(title: "Bike path", description: "this is a new cycling path for better transportation.", address: "Herzogstraße", progress: "Created",  user_id:"1")
Project.create!(title: "Bike lane", description: "this is a new cycling path for better transportation.", address: "Herzogstraße", progress: "Created",  user_id:"1")
Project.create!(title: "Pokemon house", description: "this is a new cycling path for better transportation.", address: "Herzogstraße", progress: "Created",  user_id:"1")
Project.create!(title: "Picture dumpster", description: "this is a new cycling path for better transportation.", address: "Herzogstraße", progress: "Created",  user_id:"1")
