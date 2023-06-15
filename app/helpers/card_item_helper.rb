module CardItemHelper
  def card_item_action(game, item)
    case game.level
    when 1
      return "click->level-1#return#{item.name.downcase}" if ["kura", "micke", "flisat", "huset", "trogen"].include?(item.name.downcase)
    when 0
      return "buttonLampkus" if item.name.downcase == "lampküs"
    end
  end

  def card_item_hover(game, item)
    case game.level
      when 1
      if ["kura", "micke", "flisat", "huset", "trogen"].include?(item.name.downcase)
        return "mouseover->level-1#shadow#{item.name.downcase} mouseout->level-1#shadowout#{item.name.downcase} click->level-1#return#{item.name.downcase}"
      end
    end
  end


  def card_item_jump(game)
    case game.level
    when 1
      action = "click->level-1#jump"
      return action
    end
  end

  def card_item_cart(game)
    case game.level
    when 1
      action = "click->level-1#tocart"
      return action
    end
  end

  def card_item_button(game, item)
    case game.level
    when 0
      return "addJumpClass" if item.name.downcase == "lampküs"
    end
  end

  def cart_button_action(game)
    case game.level
    when 5
      action = "click->level-5#tofinish"
      return action
    end
  end
end
