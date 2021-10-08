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


script1 = Script.create(choice: "Start", image_url: "https://cdn.mos.cms.futurecdn.net/cefc9df137ac1497ea222433b217786a.png", prompt: "You awaken in a dark cave with nothing but the clothes on your back. You see an opening farther down the cave revealing that it is nightime. Exit the cave?")
optionA = Option.create(choice_value: "Yes", detail: "You emerge from the cave to find man coughing", script: script1)
optionB = Option.create(choice_value: "No", detail: "You decide to sleep it the cave until the morning.", script: script1)
script2y = Script.create(choice: "Yes", image_url:"https://asset.vg247.com/bloodborne_guide_walkthrough_9_3tR2SjI.jpg/BROK/thumbnail/1200x900/quality/100/bloodborne_guide_walkthrough_9_3tR2SjI.jpg", prompt: "You emerge from the cave to find man coughing. What should you do?")
optionC = Option.create(choice_value: "Approach", detail: "The sick man catches you by surprise and bites your shoulder. You manage to get away from him but gradually become more and more exhausted. You stop in your tracks to rest at a tree and suddenly lose consciousnesss. You awaken in a dream. The feeling is strangely familiar...", script: script2y)
optionD = Option.create(choice_value: "Ignore", detail: "You try to walk past the sick man. He catches wind of you and chases you with a crazed look in his eye.", script: script2y)
# script2n = Option.create(choice_value: "No", detail: ",")
script2END = Script.create(choice: "Approach", image_url: "https://66.media.tumblr.com/5dda5d4ed2387ea3e153ed81c4193ded/22a54f4b4b664b7c-24/s500x750/c6c2b542b69012657062835edc049651957e8a3b.gif", image_url2: "https://i.makeagif.com/media/5-19-2015/ao13Ob.gif", prompt: "The sick man catches you by surprise and bites your shoulder. You manage to get away from him but gradually become more and more exhausted. You stop in your tracks to rest at a tree and suddenly lose consciousnesss. You awaken in a dream. The feeling is strangely familiar...")

script2IgnoreChoice = Script.create(choice: "Ignore", image_url:"https://bloodborne.wiki.fextralife.com/file/Bloodborne/beast_patient.jpg", image_url2: "", prompt: "You try to walk past the sick man. He catches wind of you and chases you with a crazed look in his eye." )
optionZ = Option.create(choice_value: "Hide", detail: "You find a stack of bushes to hide in. The crazed man runs past you and you manage to escape.", script: script2IgnoreChoice)
optionY = Option.create(choice_value: "Engage him", detail: "You grab a nearby rock and knock the crazed man to the ground, killing him. You suddenly feel a surge of power and feel signficantly stronger.", script: script2IgnoreChoice)

scriptEngage = Script.create(choice: "Engage him", image_url: "https://cdn.vox-cdn.com/thumbor/b1WgZL32J3_dUXkusYHiWIf0dCc=/148x0:1768x1080/1400x1400/filters:focal(148x0:1768x1080):format(jpeg)/cdn.vox-cdn.com/uploads/chorus_image/image/46362928/Bloodborne__20150326204325.0.0.jpg", image_url2: "https://static.wikia.nocookie.net/bloodborne/images/a/a2/Insight_%E2%84%961.png/", prompt: "You grab a nearby rock and knock the crazed man to the ground, killing him. You suddenly feel a surge of power and feel signficantly stronger." )
scriptHide = Script.create(choice: "Hide", image_url: "https://guides.gamepressure.com/sekiro-shadows-die-twice/gfx/word/552599906.jpg", image_url2: "", prompt: "You find a stack of bushes to hide in. The crazed man runs past you and you manage to escape." )

# script200 = Script.create(choice: "Hide", )

script2n = Script.create(choice: "No", image_url: "https://d2skuhm0vrry40.cloudfront.net/2013/articles/1/7/5/0/8/0/0/digitalfoundry-2015-bloodborne-loading-times-improved-1429800473876.jpg/EG11/resize/1200x-1/digitalfoundry-2015-bloodborne-loading-times-improved-1429800473876.jpg", prompt: "You decide to sleep it the cave until the morning. You exit the cave and wander out of the woods until you reach an abandoned town.")
optionE = Option.create(choice_value: "Explore the abandoned town", detail: "While exploring the town you find multiple men who appear to be dead with their weapons on the groud beside them.", script: script2n)
optionF = Option.create(choice_value: "Make your way out of the abandoned town", detail: "As you're on your way out of the abandoned town you stumble upon a cemetary. Two giants with a massive axes block your exit out of the abandoned town.", script: script2n)

script3y = Script.create(choice: "Explore the abandoned town", image_url: "https://i.insider.com/57ab3a6adb5ce925008b5c62?width=750&format=jpeg&auto=webp", prompt: "While exploring the town you find multiple men who appear to be dead with their weapons on the groud beside them.")
optionG = Option.create(choice_value: "Steal their weapons", detail: "You carefully grab their weapons without alerting them. You acquire a saw cleaver and a short pistol with 11 rounds of ammunition.", script: script3y)
optionH = Option.create(choice_value: "Ignore them", detail: "You carefully walk past the men until you reach a massive staircase. You climb up to the peak of the steps where a grand church lies.", script: script3y)

script3n = Script.create(choice: "Make your way out of the abandoned town", image_url: "https://2.bp.blogspot.com/-_9cZRI8rhS4/WLluuIobZMI/AAAAAAAAQC0/LHcJ8sD8BoMtzmYcCIGl28gXFebftX7EACLcB/s1600/19%2B-%2BChurch%2BGiant.jpg", image_url2: "", prompt: "As you're on your way out of the abandoned town you stumble upon a cemetary. Two giants with a massive axes block your exit out of the abandoned town.")
optionI = Option.create(choice_value: "Flee", detail: "You turn back and run back into the abandoned town. More monsters appear along the way until you're eventually chased up a long staircase. You take shelter in the church at the peak of the steps.", script: script3n)
optionJ = Option.create(choice_value: "Fight", detail: "You dodge away from the giants' attacks. You approach one to strike them with your fists but it barely phases them. As you turn to run away the other giants grabs you and squeezes you to death.", script: script3n)

script4y = Script.create(choice: "Steal their weapons", image_url: "https://news.toyark.com/wp-content/uploads/sites/4/2018/01/Gecco-Bloodborne-The-Old-Hunters-Statue-011-928x483.jpg", image_url2: "", prompt: "You carefully grab their weapons without alerting them. You acquire a saw cleaver and a short pistol with 11 rounds of ammunition.")
optionK = Option.create(choice_value: "Make your way out of the abandoned town", detail: "You approach the exit gate of the town and are approached by two giants with axes.", script: script4y)
optionL = Option.create(choice_value: "Continue exploring", detail: "You ascend the stairs at the center of the abandoned town to reach the grand church. You find a strange woman on the floor at the back of the church. She transforms into a monstrous beast and you engage in combat. You are victorious.", script: script4y)

script4yEND = Script.create(choice: "Fight", image_url: "https://i.kinja-img.com/gawker-media/image/upload/s--eAT33Czo--/c_fit,fl_progressive,q_80,w_636/hyjjax0a1lnj4qnzjf4b.gif", image_url2: "https://bloodborne.wiki.fextralife.com/file/Bloodborne/Lesser%20Amygdala%20Grab.jpg", prompt: "You dodge away from the giants' attacks. You approach one to strike them with your fists but it barely phases them. As you turn to run away the other giants grabs you and squeezes you to death. Game over")

script4nEND = Script.create(choice: "Flee", image_url: "https://www.wallpapertip.com/wmimgs/52-521113_-bloodborne-grand-cathedral-altar.jpg", image_url2: "https://64.media.tumblr.com/90ccf17fa291d6cb2ed8d4f2e9657b86/tumblr_ov4maoyvxZ1r34uq2o7_540.gifv", prompt: "You enter the church to find a woman in a wedding dress. As you approach to ask for help she transforms into a giant beast. You evade her attacks for as long as you can until she eventually kills you. Game over")

scriptContinueExploringEND = Script.create(choice: "Continue exploring", image_url: "https://64.media.tumblr.com/dae13c3ab364ded1897eca79672c6e24/tumblr_ov4maoyvxZ1r34uq2o2_540.gifv", image_url2: "https://64.media.tumblr.com/140bec56c89af11c169ced744e399e32/tumblr_nony4m8JFG1rf8ljoo2_400.gifv", prompt: "You ascend the stairs at the center of the abandoned town to reach the grand church. You find a strange woman on the floor at the back of the church. She transforms into a monstrous beast and you engage in combat. You are victorious.")

# scriptExitAbandonedTown = Script.create(choice: "Exit the abandoned town")



user_script1 = UserScript.create(user_id: guest.id, script_id: script1.id)


puts "Done seeding"
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
