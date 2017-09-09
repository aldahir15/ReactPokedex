# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


u1 = User.create!(username: alex)
u2 = User.create!(username: tyler)
u3 = User.create!(username: seth)
u4 = User.create!(username: john)
u5 = User.create!(username: parker)

poll1 = Poll.create!(title: "Fit club poll", author_id: u5.id)
poll2 = Poll.create!(title: "Unfit club poll", author_id: u1.id)

q1 = Question.create!(text: "What sort of push-ups are best?", poll_id: poll1.id)
q2 = Question.create!(text: "What is your favorite body weight exercise?", poll_id: poll1.id)
q3 = Question.create!(text: "How long do you stretch for after working out?", poll_id: poll1.id)

q4 = Question.create!(text: "What is the best burrito in the city?", poll_id: poll2.id)
q5 = Question.create!(text: "Do you put your haribo gummy bears in the fridge?", poll_id: poll2.id)
q6 = Question.create!(text: "What's your favorite soda?", poll_id: poll2.id)

a1  = AnswerChoice.create!(text: 'Burpees',question_id:q1.id)
a2  = AnswerChoice.create!(text: 'Diamond',question_id:q1.id)
a3  = AnswerChoice.create!(text: 'Pull-ups',question_id:q2.id)
a4  = AnswerChoice.create!(text: 'Chillin',question_id:q2.id)
a5  = AnswerChoice.create!(text: '15-30 minutes',question_id:q3.id)
a6  = AnswerChoice.create!(text: 'Idk',question_id:q3.id)

a7  = AnswerChoice.create!(text: 'Uno Dos',question_id:q4.id)
a8  = AnswerChoice.create!(text: 'La taquerita',question_id:q4.id)
a9  = AnswerChoice.create!(text: 'Hell yeah, who doesn\'t?',question_id:q5.id)
a10 = AnswerChoice.create!(text: 'What?',question_id:q5.id)
a11 = AnswerChoice.create!(text: 'Coke',question_id:q6.id)
a12 = AnswerChoice.create!(text: 'Pepsi',question_id:q6.id)

r1 = Response.create!(choice: a1.id, responder_id: u1.id)
r2 = Response.create!(choice: a1.id, responder_id: u2.id)
r3 = Response.create!(choice: a7.id, responder_id: u3.id)
r4 = Response.create!(choice: a3.id, responder_id: u4.id)
r5 = Response.create!(choice: a8.id, responder_id: u5.id)
r6 = Response.create!(choice: a3.id, responder_id: u5.id)
r7 = Response.create!(choice: a6.id, responder_id: u4.id)
r8 = Response.create!(choice: a1.id, responder_id: u4.id)
r9 = Response.create!(choice: a9.id, responder_id: u3.id)
r10 = Response.create!(choice: a10.id, responder_id: u2.id)
r11 = Response.create!(choice: a4.id, responder_id: u1.id)
r12 = Response.create!(choice: a8.id, responder_id: u4.id)
