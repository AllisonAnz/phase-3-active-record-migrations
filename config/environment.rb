ENV["RACK_ENV"] ||= "development"

require 'bundler/setup'
Bundler.require(:default, ENV["RACK_ENV"])

require_relative "../app/models/artist"

# For some reason this code didn't work 
#ENV["RACK_ENV"] ||= "development"
#
#
#Bundler.require(:default, ENV["RACK_ENV"])
#require_relative "../app/models/artist"
#require_relative "/home/allison/Flatiron/phase3/phase-3-active-record-migrations/db/migrate/01_create_artists.rb"

# config/environment.rb
#require 'rake'
#require 'active_record'
#require 'yaml/store'
#require 'ostruct'
#require 'date'
#
#require 'bundler/setup'
#Bundler.require
#
## put the code to connect to the database here
## with the connection to the db configured, we have access to ActiveRecord::Migration
## and can create tables using Ruby
#ActiveRecord::Base.establish_connection(
#  :adapter => "sqlite3",
#  :database => "db/artists.sqlite"
#)
#
## This file is requrint the gems in our Gemfile giving our program access to then 
## We're using establish_connection method from ActiveRecord::Base to connect to 
## our artist db, which will be created in the migration via SQLite3 (the adapter)
## run rake db:migrate
