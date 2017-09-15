# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Todo.create(title: "eat lunch", body: "sandwich")
Todo.create(title: "eat dinner", body: "spaghetti")
Todo.create(title: "go home", body: "sleep")
Todo.create(title: "take nap", body: "on couch")


Step.create(title: "slice bread", body: "with knife", todo_id: 1)
Step.create(title: "put mustard", body: "on bread", todo_id: 1)
Step.create(title: "add vegetables", body: "in bread", todo_id: 1)
Step.create(title: "add cheese", body: "cheese is good", todo_id: 1)
Step.create(title: "cook food", body: "in oven", todo_id: 2)
Step.create(title: "take train", body: "be careful", todo_id: 3)
Step.create(title: "get in bed", body: "close eyes", todo_id: 4)
