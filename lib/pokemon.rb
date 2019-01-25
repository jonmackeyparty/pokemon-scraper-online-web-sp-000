class Pokemon
  def initialize(name, breed, age)
    @name = name
    @breed = breed
    @age = age
    @@all << self
  end
end
