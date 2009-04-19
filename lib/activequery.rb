require 'rubygems'
require 'activerecord'

module ActiveQuery
  my_dir = File.dirname(__FILE__)
  require "#{my_dir}/query/field"
  require "#{my_dir}/query/query"
  require "#{my_dir}/query/equals_filter"

  def self.included(base)
    base.extend ClassMethods
  end
  
  module ClassMethods
    def query 
      Query.new
    end
  end
end

class ActiveRecord::Base
  include ActiveQuery
end
