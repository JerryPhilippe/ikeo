class CartItemsController < ApplicationController
  def index
    @cart = current_user.cart.items
  end

  def create
    @item = Item.find(params[:id])
    if CartItem.where(item_id: @item.id).exists?
        flash[:alert] = "Koko possède déjà cet article"
        redirect_to item_path(@item)
    else
      if @item.name.downcase == "lampküs" || @item.name.downcase == "sac à dos"
        CartItem.create(cart: current_user.cart, item: @item)
        redirect_to item_path(@item)
      else
        flash[:alert] = "Koko n'a pas besoin de cet article"
        redirect_to item_path(@item)
      end
    end
  end
end
