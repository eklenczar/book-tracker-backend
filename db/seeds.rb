User.destroy_all
Book.destroy_all
Review.destroy_all

puts "🌱 Seeding..."

u1 = User.create(name: "Bob", email: "bob@ross.com", password: "bob")
u2 = User.create(name: "Carl", email: "carl@sagan.com", password: "carl")
u3 = User.create(name: "Bill", email: "bill@nye.com", password: "bill")

users = User.all.map{|u| u.id}

    Book.create(
        title: "Ulysses",
        author: "James Joyce",
        genre: "Modernism",
        image: "https://upload.wikimedia.org/wikipedia/commons/thumb/a/ab/JoyceUlysses2.jpg/330px-JoyceUlysses2.jpg",
        description: "Ulysses chronicles the appointments and encounters of the itinerant Leopold Bloom in Dublin in the course of an ordinary day, 16 June 1904."
    )

    Book.create(
        title: "Don Quixote",
        author: "Miguel de Cervantes",
        genre: "Parody",
        image: "https://m.media-amazon.com/images/I/61e0sFDtNeL._AC_UF1000,1000_QL80_.jpg",
        description: "A classic novel from 1605 which portraits the life and insightful journey of Don Quixote de la Mancha, a Spanish man who seems to be losing his mind on his quest to become a knight and restore chivalry alongside with a farmer named Sancho Panza, with whom he fights multiple imaginary enemies and faces a series of fantastic challenges."
    )

    Book.create(
        title: "The Great Gatsby",
        author: "F. Scott Fitzgerald",
        genre: "Tragedy",
        image: "https://i0.wp.com/americanwritersmuseum.org/wp-content/uploads/2018/02/CK-3.jpg?resize=267%2C400&ssl=1",
        description: "Set in Jazz Age New York, the novel tells the tragic story of Jay Gatsby, a self-made millionaire, and his pursuit of Daisy Buchanan, a wealthy young woman whom he loved in his youth."
        )

    Book.create(
        title: "Moby Dick",
        author: "Herman Melville",
        genre: "Epic",
        image: "https://img.thriftbooks.com/api/images/i/m/600C7F65E84FDA7B5A59709E8EDEF23AD6E39820.jpg",
        description: "It is the story of an eerily compelling madman pursuing an unholy war against a creature as vast and dangerous and unknowable as the sea itself."
    )

    Book.create(
        title: "War and Peace",
        author: "Leo Tolstoy",
        genre: "Historical Fiction",
        image: "https://img.thriftbooks.com/api/images/m/c14fc3e5d25800c6828b30c0885114bf15556599.jpg",
        description: "A sweeping, romantic saga of two noble families and their intertwined destiny, and a panoramic portrait of Russian society at the time of the Napoleonic Wars."
    )

    Book.create(
        title: "Wuthering Heights",
        author: "Emily Bronte",
        genre: "Gothic Fiction",
        image: "https://dearauthor.com/wp-content/uploads/2011/01/757212.jpg",
        description: "A tale of two families of the landed gentry living on the West Yorkshire moors, the Earnshaws and the Lintons, and their turbulent relationships with the Earnshaws' foster son, Heathcliff."
    )

    Book.create(
        title: "The Catcher in the Rye",
        author: "J.D. Salinger",
        genre: "Coming-Of-Age Novel",
        image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQsavbB1JB41qvpgD9oAiaXitJu69oinUy_JolRsSZKpMuihryK",
        description: "The novel details two days in the life of 16-year-old Holden Caulfield after he has been expelled from prep school. Confused and disillusioned, Holden searches for truth and rails against the “phoniness” of the adult world."
    )

    Book.create(
        title: "Pride and Prejudice",
        author: "Jane Austen",
        genre: "Historical Romance",
        image: "https://m.media-amazon.com/images/I/51ZQGWK0o0L._SL350_.jpg",
        description: "Pride and Prejudice follows the turbulent relationship between Elizabeth Bennet, the daughter of a country gentleman, and Fitzwilliam Darcy, a rich aristocratic landowner."
    )

    Book.create(
        title: "The Adventures of Huckleberry Finn",
        author: "Mark Twain",
        genre: "Adventure Fiction",
        image: "https://m.media-amazon.com/images/I/71h7PNNAX-L._AC_SY741_.jpg",
        description: "The Adventures of Huckleberry Finn (1884) is told from the point of view of Huck Finn, a barely literate teen who fakes his own death to escape his abusive, drunken father. He encounters a runaway slave named Jim, and the two embark on a raft journey down the Mississippi River."
    )

    Book.create(
        title: "Alice's Adventures in Wonderland",
        author: "Lewis Carroll",
        genre: "Literary Nonsense",
        image: "https://m.media-amazon.com/images/I/615C7iw6C-L._SY445_SX342_.jpg",
        description: "The story of a young girl named Alice who falls through a rabbit hole into a fantasy world of anthropomorphic creatures."
    )

    Book.create(
        title: "To Kill a Mockingbird",
        author: "Harper Lee",
        genre: "Southern Gothic",
        image: "https://i.ebayimg.com/images/g/NdAAAOSwCmxf~4eC/s-l500.jpg",
        description: "A young girl's coming-of-age story and darker drama about the roots and consequences of racism and prejudice, probing how good and evil can coexist within a single community or individual."
    )

    Book.create(
        title: "The Sun Also Rises",
        author: "Ernest Hemingway",
        genre: "Historical Fiction",
        image: "https://d28hgpri8am2if.cloudfront.net/book_images/onix/cvr9781645178569/the-sun-also-rises-and-other-works-9781645178569_hr.jpg",
        description: "The Sun Also Rises is a 1926 novel that portrays American and British expatriates who travel along the Camino de Santiago from Paris to the Festival of San Fermín in Pamplona and watch the running of the bulls and the bullfights."
    )

    Book.create(
        title: "The Lord of the Rings",
        author: "J.R.R. Tolkien",
        genre: "High Fantasy",
        image: "https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1566425108l/33.jpg",
        description: "The saga of a group of sometimes reluctant heroes who set forth to save their world from consummate evil."
    )

    Book.create(
        title: "Frankenstein",
        author: "Mary Shelley",
        genre: "Horror",
        image: "https://d28hgpri8am2if.cloudfront.net/book_images/onix/cvr9781982146160/frankenstein-9781982146160_hr.jpg",
        description: "The book tells the story of Victor Frankenstein, a Swiss student of natural science who creates an artificial man from pieces of corpses and brings his creature to life. Though it initially seeks affection, the monster inspires loathing in everyone who meets it."
    )

    Book.create(
        title: "The Color Purple",
        author: "Alice Walker",
        genre: "Domestic Fiction",
        image: "https://pictures.abebooks.com/isbn/9780143135692-us.jpg",
        description: "The Color Purple documents the traumas and gradual triumph of Celie, an African American teenager raised in rural isolation in Georgia, as she comes to resist the paralyzing self-concept forced on her by others."
    )


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

