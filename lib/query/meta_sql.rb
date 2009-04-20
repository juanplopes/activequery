class MetaSQL
  attr_accessor :sql
  attr_accessor :parameters

  def initialize(sql, parameters)
    @sql = sql
    @parameters = parameters
  end
  
  def to_conditions
    return [sql]+parameters
  end
end
