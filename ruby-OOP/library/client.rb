class Client
  attr_reader :name, :borrowed_books
  def initialize(name)
    @name = name
    @borrowed_books = []
  end

  def borrowing(library, book)
    if book.available == true
      taken_book = library.borrow(book)
      borrowed_books << taken_book
    else
      puts "you can't borrow #{book}, it's not available"
    end
  end

  def returning(library, book)
    library.return(book.name)
  end
end
