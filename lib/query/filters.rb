class EqualsFilter < BinaryOperator
  def op_type 
    "="
  end
end

class NotEqualsFilter < BinaryOperator
  def op_type 
    "<>"
  end
end

class AndVertex < BinaryOperator
  def op_type 
    "AND"
  end
end

class OrVertex < BinaryOperator
  def op_type 
    "OR"
  end
end
