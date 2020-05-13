# Add your code here
class Dog 
    @@all = []
    attr_accessor :name 

    def initialize(name)
        @name = name 
        save 
    end 

    def self.all 
        @@all.map{|dog| dog}
    end 

    def self.clear_all 
        @@all.clear 
    end 

    def self.print_all 
        @@all.each{|dog| puts dog.name}
    end 

    def save 
        @@all << self 
    end 
end 