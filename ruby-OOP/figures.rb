#!/usr/bin/env ruby

module Foo
  PI = 3.14159
end

class Figures
  def print_info
    print "Field of #{self} is ", field, " and circuit is ", circuit
  end
end

class Circle < Figures
  def initialize(radius)
    @radius = radius
  end

  def field
    Foo::PI * @radius ** 2
  end

  def circuit
    2 * Foo::PI * @radius
  end
end

class Rectangle < Figures
  def initialize (side1, side2)
    @side1 = side1
    @side2 = side2
  end

  def field
    @side1 * @side2
  end

  def circuit
    2 * @side1 + 2 * @side2
  end
end

class Square < Figures
  def initialize (side)
    @side = side
  end

  def field
    @side ** 2
  end

  def circuit
    4 * @side
  end
end

class Trapeze < Figures
  def initialize (base1, base2, height)
    @base1 = base1
    @base2 = base2
    @height = height
  end

  def field
    0.5 * (@base1 + @base2) * @height
  end

  def circuit
    "not enough data"
  end
end

puts Circle.new(5).print_info
puts Circle.new(2.25).print_info
puts Circle.new(100).print_info
puts Circle.new(1.33).print_info
puts Rectangle.new(5,2).print_info
puts Rectangle.new(3.33,4.20).print_info
puts Rectangle.new(124,33).print_info
puts Rectangle.new(1.2,2.2).print_info
puts Square.new(3).print_info
puts Square.new(4.45).print_info
puts Square.new(12).print_info
puts Square.new(3.66).print_info
puts Trapeze.new(2.34,6.66,2).print_info
puts Trapeze.new(113,33,16).print_info
