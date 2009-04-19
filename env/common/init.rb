require 'rubygems'
require 'activerecord'

module RequireDatabase
  def self.establish_connection
    ActiveRecord::Base.establish_connection(
      :adapter => "sqlite3",
      :database  => "#{File.dirname(__FILE__)}/../db/test.db"
    )
  end

  def self.reset_data
    User.find(:all).each do |x|
      User.delete x
    end
    
    Address.find(:all).each do |x|
      Address.delete x
    end
  end 
  
  def self.test_data
    u = test_user(1)
    u.addresses << test_address(1)
    u.addresses << test_address(2)
    u.addresses << test_address(3)
    u.save
    
    u = test_user(2)
    u.addresses << test_address(4)
    u.addresses << test_address(5)
    u.save
  end
  
  private 
    def self.test_address(numb)
      return Address.new :text => "a#{numb}"
    end
    
    def self.test_user(numb)
      return User.new :text => "u#{numb}"
    end
 
end
