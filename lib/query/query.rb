class Query < Base
  attr_accessor :clazz

  def initialize(clazz)
    @clazz = clazz
  end

  def to_s
    clazz.to_s
  end
  
  def method_missing(name, *args)
    Field.new self, name
  end
end
