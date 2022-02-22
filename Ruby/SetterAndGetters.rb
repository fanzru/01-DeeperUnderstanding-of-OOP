class CSWebsite
  
  # Constructor to initialize
  # the class with a name
  # instance variable
  def initialize(website)
    @website = website
  end
  
  # Classical get method
  def website
    @website
  end
end
  
# Creating an object of the class
fnz = CSWebsite.new "www.fanzru.dev"
puts fnz.website
# ----------------------------------------------------------------
puts "------------------------------------------------------------"
# ----------------------------------------------------------------

# Ruby Program of setter method
class CSWebsite_2

    # Constructor to initialize
    # the class with a name
    # instance variable
    def initialize(website)
        @website = website
    end
    
    # Classical get method
    def website
        @website
    end
    
    # Classical set method
    def website=(website)
        @website = website
    end
    end
    
    # Creating an object of the class
    fnz = CSWebsite_2.new "www.fanzru.dev"
    puts fnz.website
    
    # Change the instance variable from
    # Outside the class
    fnz.website="story.fanzru.dev"
    puts fnz.website
    
# ----------------------------------------------------------------
puts "------------------------------------------------------------"
# ----------------------------------------------------------------
# attr_reader : This accessor generates the automatic Getter method for the given item.
# attr_writer : This accessor generates the automatic Setter method for the given item.
# attr_accessor : This accessor generates the automatic Getter & Setter method for the given item.
# Ruby Program of accessor getter method
class CSWebsite_4
    # Constructor to initialize
    # the class with a name
    # instance variable
    def initialize(website)
        @website = website
    end
    
    # accessor get method
    attr_reader :website
end
    
# Creating an object of the class
fnz = CSWebsite_4.new "www.fanzru.dev"
puts fnz.website
    
# ----------------------------------------------------------------
puts "------------------------------------------------------------"
# ----------------------------------------------------------------
# Ruby Program of accessor getter and setter method
class CSWebsite_5
  
    # Constructor to initialize
    # the class with a name
    # instance variable
    def initialize(website)
      @website = website
    end
    
    # accessor get method
    attr_reader :website
    
    # accessor set method
    attr_writer :website
end
    
# Creating an object of the class
fnz = CSWebsite_5.new "fanzru.dev"
puts fnz.website

# Change the instance variable from
# Outside the class
fnz.website="story.fanzru.dev"
puts fnz.website
# ----------------------------------------------------------------
puts "------------------------------------------------------------"
# ----------------------------------------------------------------
# Ruby Program of accessor getter and setter method
class CSWebsite_6

    # Constructor to initialize
    # the class with a name
    # instance variable
    def initialize(website)
        @website = website
    end
    
    # accessor get and set method
    attr_accessor :website
    end
    
    # Creating an object of the class
    fnz = CSWebsite_6.new "www.fanzru.dev"
    puts fnz.website
    
    # Change the instance variable from
    # Outside the class
    fnz.website="story.fanzru.dev"
    puts fnz.website
# ----------------------------------------------------------------
puts "------------------------------------------------------------"
# ----------------------------------------------------------------
# Ruby Program of accessor getter and setter method
class CSWebsite

    # Constructor to initialize
    # the class with a name
    # instance variable
    def initialize(website, id)
        @website = website
        @id = id
    end
    
    # accessor get and set method
    attr_accessor :website
    attr_reader :id
    end
    
    # Creating an object of the class
    fnz = CSWebsite.new "www.fanzru.dev", 08
    puts fnz.website
    puts fnz.id
    