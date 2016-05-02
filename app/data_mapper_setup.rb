env = ENV["RACK_ENV"] || "development"
require 'data_mapper'
require 'dm-postgres-adapter'

require_relative 'models/users'

DataMapper.setup(:default, ENV["DATABASE_URL"] || "postgres://localhost/vemand_landing_#{env}")
DataMapper.finalize
