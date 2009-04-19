class Query
  attr_accessor :clazz

  def initialize(clazz)
    @clazz = clazz
  end

  def to_s
    clazz.to_s
  end
  
  def get_column_name(attribute)
    clazz.columns_hash.fetch(attribute)
  end

  private
    def method_missing(name, *args)
      Field.new self, name
    end
 
end
