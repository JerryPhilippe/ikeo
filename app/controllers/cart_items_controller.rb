class CartItemsController < ApplicationController
  def index
    @cart = current_user.cart.items
  end

  def create
    @item = Item.find(params[:id])
    CartItem.create(cart: current_user.cart, item: @item)
    redirect_to item_path(@item)
  end
end
