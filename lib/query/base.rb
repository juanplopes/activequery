class Base
  def &(other)
    return AndVertex.new self, other if other.is_a? Base
    raise "Invalid filter type"
  end  
  
  def |(other)
    return OrVertex.new self, other if other.is_a? Base
    raise "Invalid filter type"
  end
  
  def to_sql
    to_meta.sql
  end
end

class BinaryOperator < Base
  attr_accessor :left
  attr_accessor :right

  def initialize(left, right)
    left = Literal.new(left) unless left.is_a?(Base) || left.is_a?(Field)
    right = Literal.new(right) unless right.is_a?(Base) || right.is_a?(Field)
    
    @left = left;
    @right = right;
  end
  
  def to_meta
    m1 = left.to_meta
    m2 = right.to_meta
    MetaSQL.new "(#{m1.sql} #{op_type} #{m2.sql})", m1.parameters + m2.parameters
  end
end

class Literal
  attr_accessor :value
  def initialize(value)
    @value = value
  end
  
  def to_sql
    to_s  
  end
  
  def to_s
    value.to_s
  end
  
  def to_meta
    MetaSQL.new "?", [value]
  end
end

