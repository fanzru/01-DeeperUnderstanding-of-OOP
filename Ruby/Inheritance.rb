# Ruby program to demonstrate
# the Inheritance

#!/usr/bin/ruby

# Super class or parent class
class Fanzru

	# constructor of super class
	def initialize
		
		puts "This is Superclass"
	end
	
	# method of the superclass
	def super_method
		
		puts "Method of superclass"
	end
end

# subclass or derived class
class Sudo_Placement < Fanzru

	# constructor of deriver class
	def initialize

	puts "This is Subclass"
	end
end

# creating object of superclass
Fanzru.new

# creating object of subclass
sub_obj = Sudo_Placement.new

# calling the method of super
# class using sub class object
sub_obj.super_method
# ----------------------------------------------------------------
puts "------------------------------------------------------------"
# ----------------------------------------------------------------
# Overiding
# parent class
class Fanz
	
	# method of the superclass
	def super_method
		
		puts "This is Superclass Method"
    end
	
end

# derived class 'Ruby'
class Ruby < Fanz
	
	# overriding the method of the superclass
	def super_method
		
		puts "Override by Subclass"
end
end
obj1=Fanz.new
puts obj1.super_method
# creating object of sub class
obj = Ruby.new

# calling the method
obj.super_method
# ----------------------------------------------------------------
puts "------------------------------------------------------------"
# ----------------------------------------------------------------
# base class
class Fanzru_1
    # method of superclass accepting
    # two parameter
    def display a = 0, b = 0
        puts "Parent class, 1st Argument: #{a}, 2nd Argument: #{b}"
    end
        
end
    
# derived class Fanzru_2
class Fanzru_2 < Fanzru_1
    # subclass method having the same name
    # as superclass
    def display a,b
        # calling the superclass method
        # by default it will pass
        # both the arguments
        super
        # passing only one argument
        super a
        # passing both the argument
        super a,b
        # calling the superclass method
        # by default it will not pass
        # both the arguments
        super()
        puts "Hey! This is subclass method"
    end
end

# creating object of derived class
obj = Fanzru_2.new
# calling the method of subclass
obj.display "Fanzru", "Tetsuya"