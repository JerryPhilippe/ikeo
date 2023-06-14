class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :components]

  def home
  end

  def components
  end

  def cave
  end

  def start; end

  def finish; end

  def components; end

  def secretroom
    @item = Item.find_by name: 'Sac à dos'
  end

end
