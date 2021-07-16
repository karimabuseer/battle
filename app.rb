require 'sinatra/base'
require 'sinatra/reloader'
require './lib/game'

class Battle < Sinatra::Base

  enable :sessions
  configure :development do
    register Sinatra::Reloader
  end

  ## Option Pages
  get '/' do
    redirect to('/start_battle')
  end

  get '/start_battle' do
    erb(:index)
  end

  before do
    @game = Game.instance
  end

  post '/names' do
    @game = Game.create(params[:player1], params[:player2])
    redirect to('/play')
  end

  get '/play' do
    erb(:play)
  end

  ## Action Pages 
  get '/attack' do
    @game.attack
    redirect to ('/win') if @game.won?
    erb(:attack)
  end

  get '/poison' do
    @game.attack
    redirect to ('/win') if @game.won?
    erb(:attack)
  end

  get '/hypno' do
    @game.attack
    redirect to ('/win') if @game.won?
    erb(:attack)
  end

  get '/sleep' do
    @game.attack
    redirect to ('/win') if @game.won?
    erb(:attack)
  end

  get '/heal' do
    @game.attack
    redirect to ('/win') if @game.won?
    erb(:attack)
  end

  ## Winner Pages
  get '/win' do
    erb(:winner)
  end

  run! if app_file == $0
end
