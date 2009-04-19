class EqualsFilter < Base
  attr_accessor :left
  attr_accessor :right
  
  def to_sql
    "#{left} = #{right}"
  end
end
