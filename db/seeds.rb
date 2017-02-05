# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Article.create(title: "A History of Pawnee Indiana: 1839", body: "Leslie Knope")
Article.create(title: "Funny Stuff People Say While I Shine Shoes", body: "Andy Dwyer")
Article.create(title: "Ten Steps to Protect Yourself from the Government", body: "Leslie Knope")
Article.create(title: "Why Animals are Better than People", body: "April Ludgate")
Article.create(title: "The Cones of Dunshire: Strategy Guide", body: "Ben Wyatt")
Article.create(title: "Ballin' Hollywood Style in Pawnee, Indiana", body: "Tom Haverford & Donna Meagel")
Article.create(title: "Literally the Best Vitamins on Earth", body: "Chris Traeger")
Article.create(title: "Notary Seals", body:"Jerry Gergich")
Article.create(title: "What to Do If Your Child Gets Stuck in Paunch Burger's Child Size Cup", body:"Ann Perkins")
Article.create(title: "Being Rich is Hard", body: "Bobby Newport")

Article.find(1).comments.create(commenter_name: "April Ludgate", body:"This is super interesting, Leslie. Too bad you don't have more.")
Article.find(1).comments.create(commenter_name: "Chris Traeger", body:"This is *literally* the best history of Pawnee in 1839 I've ever read.")
Article.find(2).comments.create(commenter_name: "Leslie Knope", body:"Son, did you not read #4 on my list of how to protect yourself from the government? Remove any mention of my boss from your article. Immediately.")
Article.find(4).comments.create(commenter_name: "Leslie Knope", body:"Great article, April! I'm so proud of you! Aren't you glad you wrote the article now?")
Article.find(6).comments.create(commenter_name: "Leslie Knope", body:"Tom, why didn't you include The Bulge on your list? They're the best bar ever! Did you know I'm their Queen?")
Article.find(7).comments.create(commenter_name: "Leslie Knope", body:"Chris, I tried your vitamins and they don't taste very good. Do you have any vitamins that are healthy, but also tasty?")
Article.find(9).comments.create(commenter_name: "Leslie Knope", body:"Ann, you elegant, technicolor, sunfish, I've already gotten three phone calls from people who said your article saved them a trip to the hospital! You're amazing!")

Article.find(1).tags.create name: "pawnee"
Article.find(1).tags.create name: "history"
Article.find(2).tags.create name: "city hall"
Article.find(3).tags.create name: "how-to"
Article.find(5).tags.create name: "board games"
Article.find(6).tags.create name: "hollywood"
Article.find(6).tags.create name: "style"
Article.find(6).tags << Tag.find_by(name: "pawnee")
Article.find(7).tags.create name: "health"
Article.find(7).tags.create name: "vitamins"
Article.find(8).tags.create name: "notary"
Article.find(9).tags << Tag.find_by(name: "health")
Article.find(9).tags << Tag.find_by(name: "pawnee")
Article.find(9).tags << Tag.find_by(name: "how-to")