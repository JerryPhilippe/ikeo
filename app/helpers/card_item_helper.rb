module CardItemHelper
  def card_item_action(game, item)
    case game.level
    when 1
      return "click->level-1#return#{item.name.downcase}" if item.name.downcase == "kura" || "vitval" || "sundvik" || "huset" || "troger"
    end
  end

  def card_item_hover(game, item)
    case game.level
    when 1
      if item.name.downcase == "kura" || "vitval" || "sundvik" || "huset" || "troger"
        action = "mouseover->level-1#shadow#{item.name.downcase}  mouseout->level-1#shadowout#{item.name.downcase}"
      end
      return action
    end
  end

  def card_item_jump(game)
    case game.level
    when 1
      action = "click->level-1#jump"
      return action
    end
  end
end
