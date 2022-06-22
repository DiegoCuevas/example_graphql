# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
author1 = Author.create(name: "Diego")
book1 = Book.create(name: "book1", publish_at: "12/12/2001", author_id: author1.id)
book2 = Book.create(name: "book2", publish_at: "12/01/2001", author_id: author1.id)
book3 = Book.create(name: "book3", publish_at: "12/05/2001", author_id: author1.id)