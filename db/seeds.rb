# This will delete any existing rows from the Movie and Actor tables
# so you can run the seed file multiple times without having duplicate entries in your database
puts "Deleting movie/actor data..."
Movie.destroy_all
Actor.destroy_all

puts "Creating movies..."
mean_girls = Movie.create(title: "Mean Girls", box_office_earnings: 129_000_000)
spice_world = Movie.create(title: "Spice World", box_office_earnings: 151_000_000)

puts "Creating actors..."
lindsay_lohan = Actor.create(name: "Lindsay Lohan")
tina_fey = Actor.create(name: "Tina Fey")
baby_spice = Actor.create(name: "Emma Bunton")
ginger_spice = Actor.create(name: "Geri Halliwell")
scary_spice = Actor.create(name: "Melanie Brown")
sporty_spice = Actor.create(name: "Melanie Chisholm")
posh_spice = Actor.create(name: "Victoria Addams")

puts "Creating roles..."
# ***********************************************************
# * TODO: create roles! Remember, a role belongs to a movie *
# * and a role belongs to an actor.                         *
# ***********************************************************
# Create Roles Here

Role.create(character_name: "Lindsay Lohan", Salary: 2_000_000, movie_id: mean_girls.id, actor.id: lindsay_lohan.id)
Role.create(character_name: "Emma Bunton", Salary: 5_000_000,  movie_id: spice_world.id, actor.id: baby_spice.id)
Role.create(character_name: "Melanie Brown", Salary: 6_000_000, movie_id: spice_world.id, actor.id: scary_spice.id)
Role.create(character_name: "Victoria Addams", Salary: 3_000_000, movie_id: spice_world.id, actor.id: posh_spice.id)
Role.create(character_name: "Melanie Chisholm", Salary: 8_000_000, movie_id: spice_world.id, actor.id: sporty_spice.id)
Role.create(character_name: "Tina Fey", Salary: 11_000_000, movie_id: mean_girls.id, actor.id: tina_fey.id)
Role.create(character_name: "Geri Halliwell", Salary: 3_000_000, movie_id: spice_world.id, actor.id: ginger_spice.id)

puts "Seeding done!"