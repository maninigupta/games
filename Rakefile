require 'bundler'
Bundler.require

require 'sinatra/activerecord/rake'

ActiveRecord::Base.establish_connection({
  adapter: 'postgresql',
  database: 'games'
  })

namespace :db do
  desc "create database"
  task :create_db do
    conn = PG::Connection.open()
    conn.exec('CREATE DATABASE games;')
    conn.close
  end

  desc "drop database"
  task :drop_db do
    conn = PG::Connection.open()
    conn.exec('DROP DATABASE games;')
    conn.close
  end


  desc "insert CSV data into entries table"
  task :load_data do
    require 'csv'
    require './models/word'
    CSV.foreach('word.csv') do |word|
      word = word[0]

      Word.create!({
        word: word,
        })
    end
  end
end