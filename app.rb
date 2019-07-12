require 'sinatra/base'
require './lib/player.rb'
require './lib/game.rb'

class Battle < Sinatra::Base

enable :sessions
  before do
    @game = Game.instance
  end

  get '/' do
    erb :index
  end

  post '/names' do
    player_1 = Player.new(params[:player_1_name])
    player_2 = Player.new(params[:player_2_name])
    @game = Game.create(player_1, player_2)
    redirect '/play'
  end

  get '/play' do
    # @game = $game
    if @game.finished?
      redirect '/finish'
    else
      erb :play
    end
  end

  post '/attack' do
    # @game = $game
    @game.attack(@game.opponent)
    @game.switch_turn
    redirect '/play'
  end

  get '/finish' do
    # @game = $game
    erb :finish
  end

 run! if app_file == $0

end
