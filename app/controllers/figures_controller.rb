class FiguresController < ApplicationController

  get '/figures/new' do
    #Route to form to create new landmark_id
    erb :'figures/new'
  end

  post '/figures' do
    #route to create new landmark
    Figure.create(params[:landmark])
    erb :'figures/index'
  end

  get '/figures' do
    @figures = Figure.all
    #route to show all figures
    erb :'figures/index'
  end

  get '/figures/:id/edit' do
    @landmark = Figure.find_by(id: params[:id])
    #route to get form to edit landmark
    erb :'figures/edit'
  end

  patch '/figures/:id' do
    @landmark = Figure.find_by(id: params[:id])
    @landmark.update(params[:landmark])
    #route to edit landmark
    redirect "figures/#{@landmark.id}"
  end

  get '/figures/:id' do
    @landmark = Figure.find_by(id: params[:id])
    # binding.pry
    #route to show individual landmark
    erb :'figures/show'
  end

end
