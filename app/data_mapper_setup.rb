env = ENV["RACK_ENV"] || "development"
#require the model(s):

DataMapper.setup(:default, ENV["DATABASE_URL"] || "postgres://localhost/vemand_landing#{env}")
DataMapper.finalize
