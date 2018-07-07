# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

survey = Survey.create!

question_bodies = ["In your career thus far, what has been your favorite job and least favorite job and why?", "What do you hope to be doing professionally five years from now?", "Imagine that you work at a home repair company. You recently visited a homeowner and gave them a proposal for $5,000 in repairs to fix a broken outdoor staircase ($1,000), fix a storm drain ($500) and install storm windows for the living room ($3,500). 
You receive the below email from the client later. Please write your reply below:
Hey! Thanks for coming by earlier. I'm interested in having your home repair company give my house some touch-ups, but I just can't afford the $5,000 right now. I'll be back in touch in six months when I'm done with car payments and can discuss it then. Have a great day! - Doris", "Imagine that you are hired to work at a home repair company. Please describe how you would go about generating customers for your new company.", "What is a CRM?
What are the greatest benefits of using a CRM?"]


question_bodies.each do |question_body|
  Question.create!(body: question_body, survey: survey)
end