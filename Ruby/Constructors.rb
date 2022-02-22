# class name
class Fanzru
      
    # constructor
    def initialize
          
        # instance variable intialzation
        @inst_1 = "Fanzru"
        @inst_2 = "Sudo Placement"
    end
      
    # display method
    def display
        puts "Value of First instance variable is: #{@inst_1}"
        puts "Value of Second instance variable is: #{@inst_2}"
    end
end
  
# creating object
obj1 = Fanzru.new()
  
# calling display method
obj1.display()