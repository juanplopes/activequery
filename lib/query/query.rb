class Query
  attr_accessor :clazz

  def method_missing(name, *args)
    Field.new name
  end
end
