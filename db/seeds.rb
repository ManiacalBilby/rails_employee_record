# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Employee.destroy_all
Child.destroy_all

ActiveRecord::Base.connection.tables.each do |t|
  ActiveRecord::Base.connection.reset_pk_sequence!(t)
end



Employee.create({emp_no: 1, birth_date: "1975-01-15", first_name: "James", last_name: "Smith", gender: 0, title: "CEO"})
Employee.create({emp_no: 2, birth_date: "1962-02-25", first_name: "Linda", last_name: "Franko", gender: 1, title: "CFO"})
Employee.create({emp_no: 3, birth_date: "1985-05-26", first_name: "Catherine", last_name: "Dodge", gender: 1, title: "Accountant"})
Employee.create({emp_no: 4, birth_date: "1988-07-09", first_name: "David", last_name: "Kim", gender: 0, title: "Programmer"})
Employee.create({emp_no: 5, birth_date: "1992-03-24", first_name: "Joseph", last_name: "Norton", gender: 0, title: "Designer"})

Child.create({child_no: 1, emp_no:2, birth_date: "1982-04-17", first_name: "James", last_name: "Franko", gender: 0})
Child.create({child_no: 2, emp_no:2, birth_date: "1996-11-19", first_name: "Julie", last_name: "Franko", gender: 1})
Child.create({child_no: 3, emp_no:4, birth_date: "2015-04-16", first_name: "Molly", last_name: "Kim", gender: 1})
Child.create({child_no: 4, emp_no:1, birth_date: "1998-07-09", first_name: "Taylor", last_name: "Smith", gender: 0})
Child.create({child_no: 5, emp_no:1, birth_date: "1992-03-24", first_name: "Benjamin", last_name: "Smith", gender: 0})