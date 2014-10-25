require 'active_record'
require 'sqlite3'
require 'yaml'

# This is some boilerplate code to read the config/database.yml file
# And connect to the database

config_path = File.join(File.dirname(__FILE__), "database.yml")
ActiveRecord::Base.configurations = YAML.load_file(config_path)
ActiveRecord::Base.establish_connection(:development)
