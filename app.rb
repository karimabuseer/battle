require 'sinatra/base'
require 'sinatra/reloader'
require './lib/game'

class Battle < Sinatra::Base

  enable :sessions
  configure :development do
    register Sinatra::Reloader
  end

  

  get '/' do
    @game = nil
    params[:player1] = nil
    params[:player2] = nil
    redirect to('/start_battle')
  end

  get '/start_battle' do
    erb(:index)
  end

  post '/names' do
    @game = Game.create(Player.new(params[:player1]), Player.new(params[:player2]))
    redirect to('/play')
  end

  get '/play' do
    @game = Game.instance
    erb(:play)
  end

  get '/attack' do
    @game = Game.instance
    @game.attack
    redirect to ('/win') if @game.won?
    erb(:attack)
  end

  get '/win' do
    @game = Game.instance
    erb(:winner)
  end

  run! if app_file == $0
end
