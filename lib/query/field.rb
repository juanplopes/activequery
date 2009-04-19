class Field
  attr_accessor :name

  def initialize(name)
    self.name = name
  end
  
  def ==(other)
    Query.new
  end
end
