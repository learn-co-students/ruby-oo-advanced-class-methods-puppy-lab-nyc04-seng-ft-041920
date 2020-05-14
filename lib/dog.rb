
require('pry')

class Dog

    attr_accessor :name
    @@all = []

    def initialize(name)
        @name = name
        self.save
    end

    def self.all
        @@all
    end

    def self.clear_all
        self.all.clear
    end

    def self.print_all
        #binding.pry

        puts self.all.map{|dog| dog.name}
        # self.all.each do |dog|
        #     puts dog.name
        # end

    end

    def save
        self.class.all << self
    end

end

# dog = Dog.new("Sol")
# dog1 = Dog.new("Cherry")
# dog2 = Dog.new("Byul")

# Dog.print_all