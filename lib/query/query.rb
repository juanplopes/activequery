class Query
  attr_accessor :clazz

  def initialize(clazz)
    @clazz = clazz
    clazz.columns_hash.each do |key, value|
      self.instance_eval("def #{key}; return get_field('#{key}') end");
    end
  end

  def to_s
    clazz.to_s
  end
  
  def get_field(name)
    Field.new self, name
  end
  
  def get_column_name(attribute)
    clazz.columns_hash.fetch(attribute)
  end

  def query_alias
    clazz.table_name
  end


end
