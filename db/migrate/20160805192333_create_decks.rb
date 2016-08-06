class CreateDecks < ActiveRecord::Migration[5.0]
  def change
    create_table :decks do |t|
      t.string :title
      t.string :type
      t.references :game, foreign_key: true

      t.timestamps
    end
  end
end
