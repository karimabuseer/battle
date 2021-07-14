require 'sinatra/base'
require 'sinatra/reloader'
require 'player'

class Battle < Sinatra::Base

  enable :sessions
  configure :development do
    register Sinatra::Reloader
  end

  def set_player
    @player1 = $player1
    @player2 = $player2
  end

  get '/' do
    redirect to('/start_battle')
  end

  get '/start_battle' do
    erb(:index)
  end

  post '/names' do
    $player1 = Player.new(params[:player1])
    $player2 = Player.new(params[:player2])
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