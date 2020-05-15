# Add your code here
class Dog
  # created an attr_reader to only give the name instance varible access to get not to set (update)
  attr_reader :name
  # created a Class variable name @@all and set it to an empty arr
  @@all = []

  def initialize name
    @name = name
    # made self whis is the current instance calling the initialize method. to call the method 'save'
    self.save
  end

  # This Class method is also know as a Class reader, cus it only returns the Class var
  def self.all
    @@all
  end

# This is another Class var, so it empties the class var @@all using the clear method for Arrays
  def self.clear_all
    @@all.clear
  end

  # Here we simply iterate through the class var @@all using the each method and putting out the name of the dogs
  def self.print_all
    @@all.each { |dog_instance| puts dog_instance.name}
  end
# this Instance method is in charge of pushing the instance to the Class var that is an array
  def save
    @@all << self
  end

end
