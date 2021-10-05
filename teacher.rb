require './person'

class Teacher < Person
  def initialize(specialization, age, name = 'Unknown')
    super(age, name)
    @specialization = specialization
  end

  def can_use_services?
    true
  end
end

teacher = Teacher.new('Chess', 49, 'Spike')

p teacher.can_use_services?
