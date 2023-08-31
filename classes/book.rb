require_relative 'rental'
class Book
  attr_accessor :title, :author, :rental

  def initialize(title, author)
    @title = title
    @author = author
    @rental = []
  end

  def self.all
    ObjectSpace.each_object(self).to_a
  end

  def add_rental(date, person)
    Rental.new(date, person, self)
  end
end
