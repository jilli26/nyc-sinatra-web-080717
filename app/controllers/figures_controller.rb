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

  get "/figures/:id/edit" do
    @figure = Figure.find_by(id: params[:id])
    @landmarks = Landmark.all
    @titles = Title.all

    erb :'/figures/edit'
  end

  patch '/figures/:id' do
    @figure = Figure.find_by(id: params[:id])
    @figure.update(params[:figure])

    if !params[:landmark][:name].empty?
      Landmark.create(params[:landmark])
    end
    if !params[:title][:name].empty?
      Title.create(params[:title])
    end

    redirect "figures/#{@figure.id}"
  end

  get '/figures/:id' do
    @figure = Figure.find_by(id: params[:id])
    erb :'figures/show'
  end

end
