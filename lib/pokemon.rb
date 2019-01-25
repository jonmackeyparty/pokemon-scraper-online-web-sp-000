class Pokemon
  attr_accessor :id, :name, :type, :db 
  @@all = []
  
  def initialize(id:, name:, type:, db:)
    @id = id
    @name = name
    @type = type
    @db = db
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def self.save(name, type, db)
    db.execute("INSERT INTO pokemon (name, type) VALUES (?, ?)", name, type)
  end
  
  def self.find(id, db)
    a = db.execute("SELECT * FROM pokemon WHERE :id = (id)", id)
    Pokemon.new(a.id, a.name, a.type, a.db)
  end
  
end
