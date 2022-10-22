# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

ActiveRecord::Base.connection.execute("truncate table #{Apartment.table_name} restart identity;")
ActiveRecord::Base.connection.execute("truncate table #{Resort.table_name} restart identity;")

Resort.create([
                {name: 'Метраполь', email: 'mail@metropol.com'},
                {name: 'Астория', email: 'mail@astoria.com'}
              ])

Apartment.create([
                   {room_type: 'база', description: '', resort_id: 1},
                   {room_type: 'люкс', description: '', resort_id: 1},
                   {room_type: 'президент', description: '', resort_id: 1},
                   {room_type: 'эконом', description: '', resort_id: 2},
                   {room_type: 'база+', description: '', resort_id: 2},
                   {room_type: 'люкс', description: '', resort_id: 2}
                 ])