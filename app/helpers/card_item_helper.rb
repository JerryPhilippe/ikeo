module CardItemHelper
  def card_item_action(game, item)
    case game.level
    when 0
      return "click->level-0#switchLight" if item.name.downcase == "lampküs"
    when 4
      return "mouseover->level-4#hot mouseout->level-4#cold" if item.name.downcase == "spiegella"
    end
  end
end
