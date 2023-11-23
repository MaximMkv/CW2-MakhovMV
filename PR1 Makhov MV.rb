module Printable
  def print_info
    puts "Information about the objects:"
    puts "\nClass: #{self.class}"
    instance_variables.each do |var|
      puts "#{var}: #{instance_variable_get(var)}"
    end
  end
end



class Person
  include Printable # використання у класі Person

  attr_accessor :name, :age

  def initialize(name, age)
    @name = name
    @age = age
  end
end



class Car
  include Printable # Використання у класі Car

  attr_accessor :make, :model, :year

  def initialize(make, model, year)
    @make = make
    @model = model
    @year = year
  end
end


person = Person.new("John", 22)
person.print_info


car = Car.new("Nissan", "Navara", 2019)
car.print_info


