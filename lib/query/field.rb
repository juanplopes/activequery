class Field
  attr_accessor :query
  attr_accessor :name

  def initialize(query, name)
    @query = query
    @name = name
  end
  
  def ==(other)
    f = EqualsFilter.new
    f.left = self
    f.right = other
    return f
  end
  
  def to_s
    "#{query}.#{name}"
  end
end
