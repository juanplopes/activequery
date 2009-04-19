require "#{File.dirname(__FILE__)}/filelist"
RequireDatabase.establish_connection
RequireDatabase.reset_data
RequireDatabase.test_data

