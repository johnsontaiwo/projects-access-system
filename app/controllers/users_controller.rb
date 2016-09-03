class UsersController < ApplicationController


get '/login' do
    erb :'/users/login'
  end

  post '/login' do
    @user = User.find_by(:username => params[:username])
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      erb :'projects/homepage'
    else
      redirect to '/login'
    end
  end

  get '/logout' do
    if !!current_user
       session.clear
      redirect "/"
    end
  end


end