# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
# w = Woobly.create(name: "Woobly")

User.destroy_all
Script.destroy_all
UserScript.destroy_all


guest = User.create(username: "Woobleson McWoobly", password: "password")
test_user = User.create(username: "Test", password: "321")

# script1 = Script.create(choice: "Start", prompt: "Go to the store?", options: {"Yes", "No"})
# script2a = Script.create(choice: "Yes", prompt: "The store was empty. Should you steal something?", options: {"Yes", "No"})
# script2b = Script.create(choice: "No", prompt: "You return home. The end", options: {})
script1 = Script.create(choice: "Start", prompt: "Go to the store?")
options1 = Option.create(choice_value: "Yes", detail: "The store was empty. Should you steal something?", script: script1)
options2 = Option.create(choice_value: "No", detail: "You return home. The end", script: script1)
script2y = Script.create(choice: "Yes", prompt: "The store was empty. Should you steal something?")
options3 = Option.create(choice_value: "Yes", detail: "You get caught and go to jail", script: script2y)
options4 = Option.create(choice_value: "No", detail: "You return home the end.", script: script2y)
# script2n = Option.create(choice_value: "No", detail: ",")
script2n = Script.create(choice: "No", prompt: "You return home. The end")
optionsEnd = Option.create(choice_value: "No", detail: "Start", script: script2n)



user_script1 = UserScript.create(user_id: guest.id, script_id: script1.id)


puts "Done seeding"
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
