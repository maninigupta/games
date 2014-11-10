class ApplicationController < Sinatra::Base

  helpers Sinatra::AuthenticationHelper
  helpers Sinatra::LetterHelper

  enable :sessions
  enable :method_override

  register Sinatra::ActiveRecordExtension

  set :database, {adapter: "postgresql", database: "games"}
  set :views, File.expand_path("../../views", __FILE__)
  set :public_dir, File.expand_path("../../public", __FILE__)

  get '/' do
    if current_user
      erb :index
    else
      erb :not_authenticated
    end
  end

  get '/console' do
    binding.pry
  end

end