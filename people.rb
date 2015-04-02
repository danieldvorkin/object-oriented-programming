#People Exercise
class Person
	attr_accessor :name

	def initialize(name) 
		@name = name
	end

	def greeting
		puts "Hi, my name is #{@name}"
	end
end

class Student < Person

	def learn
		puts "I get it!"
	end
end

class Instructor < Person
	
	def teach
		puts "Everything in Ruby is an object"
	end
end

instructor_one = Instructor.new("chris")
instructor_one.greeting

student_one = Student.new("christina")
student_one.greeting

instructor_one.teach
student_one.learn

student_one.teach
# The reason why the line of code above doesn't work is due to the method "teach" not being in the student class
