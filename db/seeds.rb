# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

User.destroy_all
Blog.destroy_all
Comment.destroy_all


ronnie = User.create(name: "Ron", username: "a", age: "99", password: "123", display_photo: "someImg")
pierre = User.create(name: "Pierre", username: "b", age: "99", password: "321", display_photo: "someImg")

ronnie.blogs.create(cover_image: "someCover", title: "Here and Back Again", story: "React Router is a way for our frontend application to have navigation functionality which is great for Single Page Applications, as it allows for a component to render without the page refreshing. No magic here, Under the hood React Router uses the history API which is used to manipulate pages a user has visited with functions like windows.history.back(), and windows.history.forward() to list a few. Now onwards to React Router.", likes: 5)
pierre.blogs.create(cover_image: "someCover", title: "for dummies", story: "dummy lorem ipsum", likes: 3)

# ronnie.blogs[0].comments.create(statement: "lorem ipsum", likes: 0)
# dummy1.blogs[0].comments.create(statement: "dummy lorem", likes: 0)

Comment.create(user_id: 2, name: "Pierre", blog_id: 1, statement: "great blog, ronnie", likes: 1)
Comment.create(user_id: 1, name: "Ron", blog_id: 2, statement: "nice work, pierre", likes: 2)

15.times do
    User.create(
        name: Faker::Name.unique.name,
        username: Faker::Superhero.unique.name,
        age: Faker::Number.between(from: 13, to: 150),
        password: "5",
        display_photo: "something"
    )
end

25.times do
    Blog.create(
        cover_image: "something",
        title: Faker::Book.unique.title,
        story: Faker::Lorem.paragraph(sentence_count: 35),
        likes: Faker::Number.between(from: 1, to: 150),
        user_id: Faker::Number.between(from: 1, to: 15)
    )
end

30.times do
    i = 1
    Comment.create(
        statement: Faker::Lorem.paragraph(sentence_count: 1),
        likes: Faker::Number.between(from: 1, to: 150),
        user_id: Faker::Number.between(from: 1, to: 15),
        blog_id: Faker::Number.between(from: 1, to: 25),
        name: User.all.find(i).name
    )
end

30.times do
    i = 2
    Comment.create(
        statement: Faker::Lorem.paragraph(sentence_count: 1),
        likes: Faker::Number.between(from: 1, to: 150),
        user_id: Faker::Number.between(from: 1, to: 15),
        blog_id: Faker::Number.between(from: 1, to: 25),
        name: User.all.find(i).name
    )
end

30.times do
    i = 3
    Comment.create(
        statement: Faker::Lorem.paragraph(sentence_count: 1),
        likes: Faker::Number.between(from: 1, to: 150),
        user_id: Faker::Number.between(from: 1, to: 15),
        blog_id: Faker::Number.between(from: 1, to: 25),
        name: User.all.find(i).name
    )
end

30.times do
    i = 4
    Comment.create(
        statement: Faker::Lorem.paragraph(sentence_count: 1),
        likes: Faker::Number.between(from: 1, to: 150),
        user_id: Faker::Number.between(from: 1, to: 15),
        blog_id: Faker::Number.between(from: 1, to: 25),
        name: User.all.find(i).name
    )
end

30.times do
    i = 5
    Comment.create(
        statement: Faker::Lorem.paragraph(sentence_count: 1),
        likes: Faker::Number.between(from: 1, to: 150),
        user_id: Faker::Number.between(from: 1, to: 15),
        blog_id: Faker::Number.between(from: 1, to: 25),
        name: User.all.find(i).name
    )
end

30.times do
    i = 6
    Comment.create(
        statement: Faker::Lorem.paragraph(sentence_count: 1),
        likes: Faker::Number.between(from: 1, to: 150),
        user_id: Faker::Number.between(from: 1, to: 15),
        blog_id: Faker::Number.between(from: 1, to: 25),
        name: User.all.find(i).name
    )
end

30.times do
    i = 7
    Comment.create(
        statement: Faker::Lorem.paragraph(sentence_count: 1),
        likes: Faker::Number.between(from: 1, to: 150),
        user_id: Faker::Number.between(from: 1, to: 15),
        blog_id: Faker::Number.between(from: 1, to: 25),
        name: User.all.find(i).name
    )
end

30.times do
    i = 8
    Comment.create(
        statement: Faker::Lorem.paragraph(sentence_count: 1),
        likes: Faker::Number.between(from: 1, to: 150),
        user_id: Faker::Number.between(from: 1, to: 15),
        blog_id: Faker::Number.between(from: 1, to: 25),
        name: User.all.find(i).name
    )
end

30.times do
    i = 9
    Comment.create(
        statement: Faker::Lorem.paragraph(sentence_count: 1),
        likes: Faker::Number.between(from: 1, to: 150),
        user_id: Faker::Number.between(from: 1, to: 15),
        blog_id: Faker::Number.between(from: 1, to: 25),
        name: User.all.find(i).name
    )
end

30.times do
    i = 10
    Comment.create(
        statement: Faker::Lorem.paragraph(sentence_count: 1),
        likes: Faker::Number.between(from: 1, to: 150),
        user_id: Faker::Number.between(from: 1, to: 15),
        blog_id: Faker::Number.between(from: 1, to: 25),
        name: User.all.find(i).name
    )
end

30.times do
    i = 11
    Comment.create(
        statement: Faker::Lorem.paragraph(sentence_count: 1),
        likes: Faker::Number.between(from: 1, to: 150),
        user_id: Faker::Number.between(from: 1, to: 15),
        blog_id: Faker::Number.between(from: 1, to: 25),
        name: User.all.find(i).name
    )
end

30.times do
    i = 12
    Comment.create(
        statement: Faker::Lorem.paragraph(sentence_count: 1),
        likes: Faker::Number.between(from: 1, to: 150),
        user_id: Faker::Number.between(from: 1, to: 15),
        blog_id: Faker::Number.between(from: 1, to: 25),
        name: User.all.find(i).name
    )
end

puts "dummy data set"
