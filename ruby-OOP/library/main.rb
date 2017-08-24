require "./book"
require "./client"
require "./library"

library = Library.new("LegendBook")
library.add_book(Book.new("Harry_Potter"))
library.add_book(Book.new("Hulk"))
library.add_book(Book.new("Pinokio"))
library.add_book(Book.new("Spiderman"))
library.add_book(Book.new("Game_of_thrones"))
library.add_book(Book.new("Warded_man"))
library.add_book(Book.new("Smurfs"))
library.add_book(Book.new("Quo_vadis"))
library.add_book(Book.new("Doll"))
library.add_book(Book.new("Alien"))

client1 = Client.new("Marian")
# client1.borrowing(library, "Ben")
client1.borrowing(library, "Hulk")
puts client1.borrowed_books
client1.borrowing(library, "Doll")
client1.returning(library, "Doll")
puts client1.borrowed_books

## zmienic w client borrowing zeby dzialalo ze stringiem
