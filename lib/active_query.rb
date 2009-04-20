require 'rubygems'
require 'activerecord'
require "#{File.dirname(__FILE__)}/filelist"

module ActiveQuery
  def self.included(base)
    base.extend ClassMethods
  end
end

class ActiveRecord::Base
  include ActiveQuery
end
