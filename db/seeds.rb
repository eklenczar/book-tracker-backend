User.destroy_all
Book.destroy_all
Review.destroy_all

puts "🌱 Seeding..."

u1 = User.create(name: "Bob", email: "bob@ross.com", password: "bob")
u2 = User.create(name: "Carl", email: "carl@sagan.com", password: "carl")
u3 = User.create(name: "Bill", email: "bill@nye.com", password: "bill")

users = User.all.map{|u| u.id}

15.times do
    Book.create(
        title: Faker::Book.title,
        author: Faker::Book.author,
        genre: Faker::Book.genre
    )
end

books = Book.all.map{|b| b.id}

20.times do
    Review.create(
        title: Faker::Lorem.sentence(word_count: 3),
        text: Faker::Lorem.paragraph,
        user_id: users.sample,
        book_id: books.sample
    )
end

puts "✅ Done seeding!"

