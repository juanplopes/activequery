module ActiveQuery
  my_dir = File.dirname(__FILE__)
  require "#{my_dir}/class_methods"
  require "#{my_dir}/query/field"
  require "#{my_dir}/query/base"
  require "#{my_dir}/query/filters"
  require "#{my_dir}/query/vertexes"
  require "#{my_dir}/query/query"
end

