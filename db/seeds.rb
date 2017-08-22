# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

dragon = {name: "Dragon", point_value: 1}
mermaid = {name: "Mermaid", point_value: 3}
maze = {name: "Maze", point_value: 10}

categories = Category.create!([dragon, mermaid, maze])

first_task = {title: "This is the first task.", category_id: categories.first.id}
second_task = {title: "This is the second task.", category_id: categories.second.id}
third_task = {title: "This is the third task.", category_id: categories.third.id}
fourth_task = {title: "More mermaids for some reason.", category_id: categories.second.id}
tasks = Task.create!([first_task, second_task, third_task, fourth_task])
