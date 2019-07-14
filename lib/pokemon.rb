class Pokemon
  attr_accessor :name, :type, :id, :db
  
  def initialize(name:, type:, db:, id:)
    @name = name
    @type = type
    @db = db
    @id = id
  end
  
  def self.save(name,type, db)
   db.execute("INSERT INTO pokemon (name, type) VALUES (?, ?)")
    
  end
  
  def self.find 
    
  end
  
end
