class Game < ApplicationRecord
  has_many :decks, dependent: :destroy
  validates :title, presence: true, length: { minimum: 5 }
   
  def self.BBTEMPLATE
    "app/views/games/_bbcode.html.erb"
  end
  
  def bbcode
    template = ERB.new File.read(Game.BBTEMPLATE)
    template.result()
  end
  
  def modbb
    "[b][ImageID=1712641original]
    Conquering Alien Warlord[/b]"
  end
end
