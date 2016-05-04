require 'sinatra'
require 'data_mapper'
require 'sinatra/flash'
require 'sinatra/partial'
require 'sass/plugin/rack'

require_relative 'data_mapper_setup'
require_relative 'controllers/application'
require_relative 'controllers/users'

set :partial_template_engine, :erb
set :public_folder, 'public'

Sass::Plugin.add_template_location("/sass/styles.scss", "/css/styles.css")
Sass::Plugin.options[:never_update] = false
Sass::Plugin.options[:always_update] = true
Sass::Plugin.options[:always_check] = true