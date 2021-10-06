require './corrector'

class Person
  attr_accessor :age, :name
  attr_reader :id

  def initialize(age, name = 'Unknown', parent_permission: true)
    @id = Random.rand(1..1000)
    @name = name
    @age = age
    @parent_permission = parent_permission
    @corrected_name = Corrector.new
  end

  def of_age?
    @age >= 18
  end

  def can_use_services?
    of_age? || @parent_permission
  end

  def validate_name
    @name = @corrected_name.correct_name(@name)
  end
end

person = Person.new(22, 'RicardoRodri')

p person.name
p person.validate_name
p person.name
