class DecksController < ApplicationController
  def edit
    @deck = Deck.find(params[:id])
  end
  
  def create
    @game = Game.find(params[:game_id])
    @deck = @game.decks.create(deck_params)
    redirect_to game_path(@game)
  end
  
  def update
    @game = Game.find(params[:game_id])
    @deck = @game.decks.find(params[:id])
      
    if @deck.update(deck_params)
      redirect_to game_path(@game)
    else
      render 'edit'
    end
  end
  
  def destroy
    @game = Game.find(params[:game_id])
    @deck = @game.decks.find(params[:id])
    @deck.destroy
    redirect_to game_path(@game)
  end
  
  private
    def deck_params
      params.require(:deck).permit(:title,:team,:imageid,:player,:variants,:hp,:maxhp,:cards_in_deck,:cards_in_trash,:cards_in_hand,:cards_in_play)
    end
end
