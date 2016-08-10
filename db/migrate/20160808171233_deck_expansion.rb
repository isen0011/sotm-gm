class DeckExpansion < ActiveRecord::Migration[5.0]
  def change
    add_column :decks, :imageid, :string
    add_column :decks, :player, :string
    add_column :decks, :variants, :string
    add_column :decks, :hp, :integer
    add_column :decks, :maxhp, :integer
    add_column :decks, :cards_in_deck, :integer
    add_column :decks, :cards_in_trash, :integer
    add_column :decks, :cards_in_hand, :integer
    add_column :decks, :cards_in_play, :integer
  end
end
