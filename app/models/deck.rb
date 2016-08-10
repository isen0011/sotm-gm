class Deck < ApplicationRecord
  belongs_to :game
  
  def bbcode
    "[b]#{title}[/b]\n" +
    "[ImageID=#{imageid}original]\n" +
    "#{runner_bbcode}\n" +
    "HP: #{hp}/#{maxhp}\n" +
    "Deck: #{cards_in_deck}\n" +
    "Trash: #{cards_in_trash}\n" +
    "Hand: #{cards_in_hand}\n" +
    "In Play: #{cards_in_play}\n" +
    (team == "Hero" ? "[/floatleft]" : "") + "[clear]\n"
  end
  
  def runner_bbcode
    case team
    when "Villian"
      "[b]#{variants}[/b]"
    when "Environment"
      ""
    when "Hero"
      "[floatleft][username=#{player}][/floatleft][floatleft]"
    end
  end
end
