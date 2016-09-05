require 'pry'
class FiguresController < ApplicationController

  get '/figures' do
    @figures = Figure.all
    erb :'figures/index'
  end

  get '/figures/new' do
    erb :'figures/new'
  end

  post '/figures' do
    @figure = Figure.find_by(params[:id])
    binding.pry
    # if !params["landmark"]["name"].empty?
    #   @figure.landmark = Landmark.create(name: params["landmark"]["name"])
    # end
    # if !params["landmark"]["year_completed"].empty?
    #   @figure.landmark.year_completed = Landmark.create(name: params["landmark"]["year_completed"])
    # end
    # if !params["title"]["name"].empty?
    #   @figure.title = Title.create(name: params["title"]["name"])
    # end
    # @figure.save
    # redirect "figures/#{@figure.id}"
  end

  # get '/figures/:id' do
  #   @figure = Figure.find(params[:id])
  #   erb :'/figures/show'
  # end



end
