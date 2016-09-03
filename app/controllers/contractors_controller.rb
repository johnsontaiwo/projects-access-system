class ContractorsController < ApplicationController

get '/contractors' do
  @contractors = Contractor.all
  if !@contractors.empty?
  erb :'/contractors/show_contractors'
  else
    redirect to "/contractors/new"
  end
end

get '/contractors/new' do
  erb :'/contractors/contractor_new'
end

post '/contractors/new' do
  if !params[:contractor].empty?
  contractor = Contractor.create(params[:contractor])
  redirect to "/projects"
  else
  redirect to "/contractors/new"
  end
end
 get '/contractors/:id' do
  @contractor = Contractor.find_by(params[:id])
  erb :'/contractors/single_contractor'
end
end