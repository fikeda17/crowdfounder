# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

user1 = User.create(first_name: "Bob", last_name: "The builder", email: "blah@blah.com", password: "1234")

project1 = Project.create(name: "material", user_id: User.last.id, funding_goal: 50, description: "MUAHAHA")

reward1 = Reward.create(name: "glass", description: "fragile", amount: 50, project_id: 1)
reward2 = Reward.create(name: "silver", description: "shiny", amount: 50, project_id: 1)
reward3 = Reward.create(name: "gold", description: "fragile", amount: 50, project_id: 1)
reward4 = Reward.create(name: "platinum", description: "fragile", amount: 50, project_id: 1)


pledge1 = Pledge.create(reward_id: reward1.id, user_id: User.first.id)