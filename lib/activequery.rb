require 'rubygems'
require 'activerecord'

module ActiveQuery
  $LOAD_PATH << "#{File.dirname(__FILE__)}";
  require "requires"

  def self.included(base)
    base.extend ClassMethods
  end
end

class ActiveRecord::Base
  include ActiveQuery
end

class String
  include ActiveQuery
end
