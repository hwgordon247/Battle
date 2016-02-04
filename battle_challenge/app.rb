require 'sinatra/base'
require './lib/player.rb'
require './lib/game.rb'

class Battle < Sinatra::Base
enable :sessions


  get '/' do
    erb(:index)
  end

  post '/names' do
    player_1 =Player.new(params[:player_1])
    player_2 = Player.new(params[:player_2])
    $game = Game.new(player_1, player_2)
    redirect '/play'
  end

  get '/play' do
    @player_1 = $game.name($game.player_1)
    @player_2 = $game.name($game.player_2)
    @player_1_health = $game.health($game.player_1)
    @player_2_health = $game.health($game.player_2)
    erb(:play)
  end

  get '/fight' do
    $game.attack($game.player_2)
    @player_1 = $game.name($game.player_1)
    @player_2 = $game.name($game.player_2)
    @player_1_health = $game.health($game.player_1)
    @player_2_health = $game.health($game.player_2)
    erb(:fight)
  end





      # # start the server if ruby file executed directly
      run! if app_file == $0
end
