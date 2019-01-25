class Pokemon
  attr_accessor :id, :name, :type, :db 
  @@all = []
  
  def initialize(id:, name:, type:, db:, hp: "60")
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
    Pokemon.new(id: a[0][0], name: a[0][1], type: a[0][2], db: db)
  end
  
end
