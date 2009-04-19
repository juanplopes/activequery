class Query
  attr_accessor :clazz

  def initialize(clazz)
    @clazz = clazz
  end

  def method_missing(name, *args)
    Field.new self, name
  end
  
  def to_sql
  
  end
end
