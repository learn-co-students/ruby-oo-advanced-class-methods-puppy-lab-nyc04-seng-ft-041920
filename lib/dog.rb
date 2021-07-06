# Add your code here
class Dog
    attr_accessor :name ##getter method, setter method, instance variables

    @@all = [] #class variable

    def initialize(name)
        @name = name
        save
    end

    def self.all #class method
        @@all
    end

    def self.clear_all #class method
        @@all.clear
    end

    def self.print_all #class method
        puts @@all.map {|each| each.name }
    end

  

    def save #instance method
        @@all << self
    end

    def clear_all #class method
        @all.clear
    end
   
end