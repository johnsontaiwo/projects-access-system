class ContractorsController < ApplicationController

get '/contractors' do
  @contractors = Contractor.all
  if !@contractors.empty?
  erb :'/contractors/show_contractors'
  else
    redirect to "/contractors/new"
  end
end





end