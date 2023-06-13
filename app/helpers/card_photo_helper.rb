module CardPhotoHelper
  def card_photo_action(game, item)
    case game.level
    when 2
      return "mouseover->level-2#openDrawer mouseleave->level-2#closeDrawer click->level-2#takeKey" if item.name.downcase == "brusalii"
    end
  end
end
