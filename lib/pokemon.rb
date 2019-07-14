class Pokemon
  attr_accessor :name, :type, :id, :db
  
  def initialize(name:, type:, db:, id:)
    @name = name
    @type = type
    @db = db
    @id = id
  end
  
  def self.save(name,type, db)
   db.execute("INSERT INTO pokemon (name, type) VALUES (?, ?)", name, type)
  end
  
  def self.find(id, db)
    pokemon = db.excute("SELECT * FROM pokeon WHERE id = ?", id).flatten
    Pokemon.new(:id pokemon[0], :name pokemon[1], :type pokemon[2], )
  end
  
end
