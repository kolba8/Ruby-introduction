class Book
  attr_accessor :available
  attr_reader :name

  def initialize(name)
    @name = name
    @available = true
  end

  def change_availability
    self.available = !available
  end
end
