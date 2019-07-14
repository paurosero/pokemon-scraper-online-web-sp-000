class Pokemon
  attr_accessor :name, :type
  attr_reader :id, :db
  
  def initialize(name:, type:, db:, id: nil)
    @name = name
    @type = type
    @db = db
    @id = id
  end
  
  def self.save(name,type, db)
   db.execute("INSERT INTO pokemon (name, type, db) VALUES (?, ?, ?)")
    
  end
  
  def self.find 
    
  end
  
end
