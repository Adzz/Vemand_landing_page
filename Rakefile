require 'data_mapper'

task :before do
  raise "RAKE_ENV has not been specified" unless ENV.has_key?('RACK_ENV')
end

namespace :db do
  desc "Use test db"
  task :test do
    ENV['RACK_ENV'] = 'test'
  end

  desc "Use development db"
  task :development do
    ENV["RACK_ENV"] = 'development'
  end

  desc "Destructive upgrade"
  task :auto_migrate => [:before] do
    require './app/data_mapper_setup'
    DataMapper.auto_migrate!
    puts "Auto-migrate complete"
  end

  desc 'Non destructive upgrade'
  task :upgrade do
    require './app/data_mapper_setup'
    DataMapper.auto_upgrade!
    puts 'Auto-upgrade complete (no data was lost)'
  end

end
