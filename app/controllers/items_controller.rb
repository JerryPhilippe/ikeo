class ItemsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_item, only: [:show]

  def index
    if params[:query].present?
      sql_query = "name @@ :query OR description @@ :query OR category @@ :query OR room_type @@ :query"
      @items = Item.where(sql_query, query: "%#{params[:query]}%").limit(30).group_by(&:room_type)
    elsif params[:room].present?
      sql_query = "room_type @@ :room"
      @items = Item.where(sql_query, room: "%#{params[:room]}%").limit(30).group_by(&:room_type)
    else
      @items = Item.all.group_by(&:room_type)
    end

    respond_to do |format|
      format.html
      format.text { render partial: 'items/list', locals: { items: @items }, formats: [:html] }
    end
  end

  def show
  end

  private

  def set_item
    @item = Item.find(params[:id])
  end
end
