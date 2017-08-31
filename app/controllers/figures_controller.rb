class FiguresController < ApplicationController

  get '/figures/new' do
    #Route to form to create new figure_id
    erb :'figures/new'
  end

  post '/figures' do
    #route to create new figure
    erb :'figures/index'
  end

  get '/figures' do
    #route to show all figures
    erb :'figures/index'
  end

  get '/figures/:id/edit' do
    #route to get form to edit figure
    erb :'figures/edit.erb'
  end

  post '/figures/:id/' do
    #route to edit figure
    redirect "figures/#{@figure.id}"
  end

  get '/figures/:id' do
    #route to show individual figure
    erb :'figures/show.erb'
  end

end
