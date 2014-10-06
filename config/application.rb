require 'active_record'
require 'sqlite3'

DB_PATH = File.expand_path("#{__dir__}/../db/lefooding.sqlite3")
ENV['DATABASE_URL'] = "sqlite3:#{DB_PATH}"

ActiveRecord::Base.establish_connection

require_relative '../models/restaurant'

