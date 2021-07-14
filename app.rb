require 'sinatra/base'
require 'sinatra/reloader'


class Battle < Sinatra::Base

  enable :sessions
  configure :development do
    register Sinatra::Reloader
  end

  def set_player
    @player1 = session[:player1]
    @player2 = session[:player2]
  end

  get '/' do
    redirect to('/start_battle')
  end

  get '/start_battle' do
    erb(:index)
  end

  post '/names' do
    session[:player1] = params[:player1]
    session[:player2] = params[:player2]
    redirect to('/play')
  end

  get '/play' do
    set_player
    erb(:play)
  end

  get '/attack' do
    set_player
    erb(:attack)
  end

  run! if app_file == $0
end