module ArCriteria
  my_dir = File.dirname(__FILE__)
  require "#{my_dir}/query/field"
  require "#{my_dir}/query/query"


  def self.included(base)
    base.extend ClassMethods
  end
  
  module ClassMethods
    def query 
      Query.new
    end
  end
end

class QQQ
  include ArCriteria
end

