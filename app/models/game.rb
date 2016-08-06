class Game < ApplicationRecord
  has_many :decks, dependent: :destroy
  validates :title, presence: true, length: { minimum: 5 }
end
