require 'active_record'
require 'bcrypt'
Dir['./models/*'].each { |x| require x }
ActiveRecord::Base.establish_connection({
  adapter: 'postgresql',
  database: 'games'
})
