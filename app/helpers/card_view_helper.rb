module CardViewHelper
  def card_view_action(game, item)
    case game.level
    when 0
      return "click->level-0#switchLight" if item.name.downcase == "lampküs"
    when 1
      return "click->level-1#returncard" if item.name.downcase == ""
    end
  end
end
