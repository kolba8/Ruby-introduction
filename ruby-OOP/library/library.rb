class Library
  attr_accessor :name, :books

  def initialize(name)
    @name = name
    @books = []
  end

  def add_book(book)
    books << book
  end

  def borrow(book_name)
    index = products.index {|book| book.name == book_name}
    return books.delete_at(index) if index
  end

  def return(book_name)
    books << book_name
  end
end
