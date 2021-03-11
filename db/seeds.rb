# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#Department.new

# employee = Employee.new({ first_name: "Bill", last_name: "Bubba", email: "bbubba@example.com", phone: "555-888-1234", condiment: "blue cheese", job_title: "bottle washer" })

# employee.save

departments = Department.create([{ name: "Arts", manager: "Spongebob" }])
