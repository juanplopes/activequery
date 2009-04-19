class EqualsFilter < BinaryOperator
  def to_sql
    "#{left} = #{right}"
  end
end

class NotEqualsFilter < BinaryOperator
  def to_sql
    "#{left} <> #{right}"
  end
end
