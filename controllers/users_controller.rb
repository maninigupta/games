class UsersController < ApplicationController

  get '/new' do
    erb :'users/new'
  end

  post '/' do
    new_user = User.new(params[:user])
    new_user.password = params[:password]
    new_user.save!
    redirect '/sessions/new'
  end
end