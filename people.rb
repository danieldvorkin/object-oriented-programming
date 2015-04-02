#People Exercise
class Student
	def learn
		puts "I get it!"
	end
end

class Instructor
	def teach
		puts "Everything in Ruby is an object"
	end
end

class Person
	attr_accessor :name

	def initialize(name) 
		@name = name
	end

	def greeting
		puts "Hi, my name is #{@name}"
	end
end

instructor_one = Person.new("chris")
instructor_one.greeting
student_one = Person.new("christina")
student_one.greeting
