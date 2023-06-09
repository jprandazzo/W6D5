# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

cat_1 = Cat.create!(name: "Cat 1", color: "brown", sex: "m", birth_date: "2020/01/01")
cat_2 = Cat.create!(name: "Cat 2", color: "white", sex: "m", birth_date: "2018/03/06")
cat_3 = Cat.create!(name: "Cat 3", color: "orange", sex: "f", birth_date: "2014/12/01")