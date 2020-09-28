# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

ronnie = User.create(name: "Ron", username: "a", age: "99", password: "123", display_photo: "someImg")
pierre = User.create(name: "Pierre", username: "b", age: "99", password: "321", display_photo: "someImg")

ronnie.blogs.create(cover_image: "someCover", title: "Here and Back Again", story: "lorem ipsum", likes: 5)
pierre.blogs.create(cover_image: "someCover", title: "for dummies", story: "dummy lorem ipsum", likes: 3)

# ronnie.blogs[0].comments.create(statement: "lorem ipsum", likes: 0)
# dummy1.blogs[0].comments.create(statement: "dummy lorem", likes: 0)

Comment.create(user_id: 2, name: "Pierre", blog_id: 1, statement: "great blog, ronnie", likes: 1)
Comment.create(user_id: 1, name: "Ron", blog_id: 2, statement: "nice work, pierre", likes: 2)



puts "dummy data set"
