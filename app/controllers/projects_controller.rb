class ProjectsController < ApplicationController

get '/projects/home' do
  erb :'/projects/homepage'
end


get '/projects' do
  @projects = Project.all
  erb :'/projects/projects'
end

end