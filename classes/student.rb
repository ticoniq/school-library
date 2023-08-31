require './person'

class Student < Person
  attr_reader :classroom

  def initialize(age, name = 'Unknown')
    super(age, name)
  end

  def classroom=(classroom)
    @classroom = classroom
    classroom.students.push(self) unless classroom.students.include?(self)
  end

  def play_hooky
    '¯\(ツ)/¯'
  end
end
