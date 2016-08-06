class DecksController < ApplicationController
  def create
    @game = Game.find(params[:game_id])
    @deck = @game.decks.create(deck_params)
    redirect_to game_path(@game)
  end
  
  def destroy
    @game = Game.find(params[:game_id])
    @deck = @game.decks.find(params[:id])
    @deck.destroy
    redirect_to game_path(@game)
  end
  
  private
    def deck_params
      params.require(:deck).permit(:title,:team)
    end
end
