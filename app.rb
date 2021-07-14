require 'sinatra/base'
require 'sinatra/reloader'


class Battle < Sinatra::Base

  enable :sessions
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
    session[:player1] = params[:player1]
    session[:player2] = params[:player2]
    redirect to('/play')
  end

  get '/play' do
    @player1 = session[:player1]
    @player2 = session[:player2]
    erb(:play)
  end

  get '/enter_hp' do
    erb(:enterhp)
  end

  post '/hp' do
    session[:player1hp] = params[:player1hp]
    session[:player2hp] = params[:player2hp]
    redirect to('/show_hp')
  end

  get '/show_hp' do
    @player1hp = session[:player1hp]
    @player2hp = session[:player2hp]
    erb(:show_hp)
  end

  run! if app_file == $0
end