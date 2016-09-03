class ProjectsController < ApplicationController

get '/projects/home' do
  erb :'/projects/homepage'
end


get '/projects' do
  @projects = Project.all
  erb :'/projects/projects'
end

get '/projects/new' do
    if logged_in?
      erb :'/projects/create_project'
    else
      redirect to "/login"
    end
  end

  post '/projects' do
    if !params[:project].empty?
    project = Project.create(params[:project])
    redirect to "/projects/#{project.id}"
    else
      erb :'/projects/homepage'
  end
end

end