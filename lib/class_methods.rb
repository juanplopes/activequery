module ClassMethods
  def query 
    Query.new self
  end
  
  def find_by_query(q)
    return find :all, :conditions=>q.to_meta.to_conditions    
  end
end


