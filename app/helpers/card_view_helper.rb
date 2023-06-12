module CardViewHelper
  def card_view_action(game, item)
    case game.level
    when 0
      return "click->level-0#switchLight" if item.name.downcase == "lampküs"
    end
  end
end
