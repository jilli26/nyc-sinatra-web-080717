class FiguresController < ApplicationController

  get '/figures/new' do
    #Route to form to create new figure_id
    @landmarks = Landmark.all
    @titles = Title.all
    erb :'figures/new'
  end

  post '/figures' do
    #route to create new figure
    Figure.create(params[:name]) #could be :figure
    @figures = Figure.all
    erb :'figures/index'
  end

  get '/figures' do
    @figures = Figure.all
    #route to show all figures
    erb :'figures/index'
  end

  get '/figures/:id/edit' do
    @figure = Figure.find_by(id: params[:id])
    #route to get form to edit figure
    erb :'figures/edit'
  end

  patch '/figures/:id' do
    @figure = Figure.find_by(id: params[:id])
    @figure.update(params[:figure])
    #route to edit figure
    redirect "figures/#{@figure.id}"
  end

  get '/figures/:id' do
    @figure = Figure.find_by(id: params[:id])
    erb :'figures/show'
  end

end
