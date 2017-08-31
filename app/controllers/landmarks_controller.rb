class LandmarksController < ApplicationController

  get '/landmarks/new' do
    #Route to form to create new landmark_id
    erb :'landmarks/new'
  end

  post '/landmarks' do
    #route to create new landmark
    erb :'landmarks/index'
  end

  get '/landmarks' do
    #route to show all landmarks
    erb :'landmarks/index'
  end

  get '/landmarks/:id/edit' do
    #route to get form to edit landmark
    erb :'landmarks/edit.erb'
  end

  post '/landmarks/:id/' do
    #route to edit landmark
    redirect "landmarks/#{@landmark.id}"
  end

  get '/landmarks/:id' do
    #route to show individual landmark
    erb :'landmarks/show.erb'
  end


end
