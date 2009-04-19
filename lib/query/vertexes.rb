class AndVertex < BinaryOperator
  def to_sql
    "(#{left.to_sql}) AND (#{right.to_sql})"
  end
end

class OrVertex < BinaryOperator
  def to_sql
    "(#{left.to_sql}) OR (#{right.to_sql})"
  end
end
