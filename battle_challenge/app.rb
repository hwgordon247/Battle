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
    @attacker_name = $game.attacker.name
    # @button = @player_2 if $game.turn
    # @button = @player_1 unless $game.turn
    erb(:play)
  end

  get '/fight' do
    $game.attack($game.opponent)
    @opponent_name = $game.opponent.name
    @opponent_health = $game.opponent.health
    $game.switch
    if $game.health($game.player_1) <= 0 || $game.health($game.player_2) <= 0
      redirect '/gameover'
    end

    erb(:fight)
  end

  get '/gameover' do
    @winner_name = $game.name($game.player_1)
    erb(:gameover)
  end





      # # start the server if ruby file executed directly
      run! if app_file == $0
end
