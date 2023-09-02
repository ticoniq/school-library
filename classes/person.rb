require_relative 'nameable'
require_relative 'capitalize_decorator'
require_relative 'trimmer_decorator'
require_relative 'rental'

class Person < Nameable
  attr_accessor :name, :age, :rental
  attr_reader :id

  def initialize(age = nil, name = 'Unknown', parent_permission: true)
    super()
    @id = generate_id
    @name = name
    @parent_permission = parent_permission
    @age = age
    @rental = []
  end

  def can_use_services?
    of_age? || @parent_permission
  end

  def self.all
    ObjectSpace.each_object(self).to_a
  end

  def correct_name
    @name
  end

  private

  def of_age?
    @age && @age >= 18
  end

  def add_rental(date, book)
    Rental.new(date, self, book)
  end

  def generate_id
    rand(1..1000)
  end
end
