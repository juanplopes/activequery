require 'rubygems'
require 'activerecord'
require 'model/*.rb'

module RequireDatabase
  def estabilish_connection
    ActiveRecord::Base.establish_connection(
      :adapter => "sqlite3",
      :database  => "#{File.dirname(__FILE__)}/../db/test.db"
    )
  end
  
  
end
