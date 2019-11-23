class Music 
  attr_accessor :name
  @@all = []
  def initialize(name)
    @name = name 
  end
  
  def save
    self.all << self 
  end
  
  def self.create(name)
    new = self.new(name) 
    new.save 
    new
  end
  
  def self.destroy_all
    @@all = []
  end
end