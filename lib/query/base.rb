class Base
  def &(other)
    return AndVertex.new self, other
  end  
  
  def |(other)
    return OrVertex.new self, other
  end
end

class BinaryOperator < Base
  attr_accessor :left
  attr_accessor :right
  
  def initialize(left, right)
    @left = left;
    @right = right;
  end
end
