# Add your code here
class Dog
    # Stores name variable
    attr_accessor :name
    
    # Sets value of class variable @@all to an empty array
    @@all = []
    
    def initialize(name)
        @name = name    
        save
    end

    def self.all
        @@all
    end

    def self.clear_all
        @@all.clear
    end

    def self.print_all
        @@all.each do |dog|
            puts dog.name
        end
    end

    def save
        @@all << self
    end


end