class Person 
      # constructor
      def initialize(name = "Unknow", age, parent_permission = true) 
   
        # instance variable     
        @id = Random.rand(1..1000)
        @name = name
        @age = age
        @parent_permission = parent_permission 
      end  

      def of_age?
        @age >= 18
      end
    
      def can_use_services?
        of_age? || @parent_permission
      end
    end
    
    person = Person.new(22, 'Valeria')
    
    p person.of_age?
    p person.can_use_services?