class FixDeckTypeName < ActiveRecord::Migration[5.0]
  def change
    rename_column :decks, :type, :team
  end
end
