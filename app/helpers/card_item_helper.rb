module CardItemHelper
  def card_item_action(game, item)
    case game.level
    when 1
      return "click->level-1#returncard" if item.name.downcase == "kura" || "vitval" || "sundvik" || "huset" || "trogen"
    end
  end
end
