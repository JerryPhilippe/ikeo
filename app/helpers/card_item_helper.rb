module CardItemHelper
  def card_item_action(game, product)
    case game.level
    when 0
      return "click->level-0#switchLight" if product.name.downcase == "lampküs"
    end
  end
end
