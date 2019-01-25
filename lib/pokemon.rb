class Pokemon
  @@all = []
  
  def initialize(id, name, type, db)
    @id = id
    @name = name
    @type = type
    @db = db 
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def self.save(id, name, type, db)
    db.execute("INSERT INTO pokemon (id, name, type) VALUES (?, ?, ?)",id, name, type)
  end
  
end
