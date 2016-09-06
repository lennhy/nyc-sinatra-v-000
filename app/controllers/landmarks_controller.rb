require 'pry'
class LandmarksController < ApplicationController

  # ------------------- GET -----------------------

  get '/landmarks' do
    @landmarks = Landmark.all
    erb :'landmarks/index'
  end

  get '/landmarks/new' do
    erb :'landmarks/new'
  end

  get '/landmarks/:id' do
    @landmark = Landmark.find(params[:id])
    erb :'landmarks/show'
  end

  # ------------------- EDIT -----------------------

  get '/landmarks/:id/edit' do
    @landmark = Landmark.find(params[:id])
    erb :'/landmarks/edit'
  end

  # ------------------- POST -----------------------

  post '/landmarks' do
    @landmark = Landmark.create(name: params[:name], year_completed: params[:year_completed])
    redirect "landmarks/#{@landmark.id}"
  end

  # ------------------- PATCH -----------------------

  patch "/landmarks/:id" do
    @landmark = Landmark.find(params[:id])
    @landmark.update(name: params[:landmark][:name], year_completed: params[:landmark][:year_completed])

    @landmark.save
    redirect "/landmarks/#{@landmark.id}"
  end

end
