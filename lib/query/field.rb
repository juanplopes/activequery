class Field
  attr_accessor :query
  attr_accessor :name

  def initialize(query, name)
    @query = query
    @name = name
  end
  
  def eq(other)
    EqualsFilter.new self, other
  end

  def neq(other)
    NotEqualsFilter.new self, other
  end
  
  def to_s
    "#{query}.#{name}"
  end
end
