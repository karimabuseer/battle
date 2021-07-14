require 'sinatra/base'
require 'sinatra/reloader'


class Battle < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    'Testing infrastructure working!'
  end

  get '/start_battle' do
    erb(:index)
  end

  post '/names' do
    @player1 = params[:player1]
    @player2 = params[:player2]
    erb(:play)
  end

  run! if app_file == $0
end