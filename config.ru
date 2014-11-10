require 'bundler'
Bundler.require(:default)

# require './controllers/application_controller'

Dir.glob('./{helpers,models,controllers}/*.rb').each do |file|
  require file
  puts "required #{file}"
end

map('/'){ run ApplicationController }
map('/sessions'){ run SessionsController }
map('/users'){ run UsersController }
map('/hangman'){ run HangmanGamesController }