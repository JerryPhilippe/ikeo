class GamesController < ApplicationController
  before_action :set_game, only: [:update]

  def update
    if @game.update(user_params)
      render json: { status: 'success', message: 'Level updated successfully' }
    else
      render json: { status: 'error', message: 'Level update failed' }, status: :unprocessable_entity
    end
  end

  private

  def set_game
    @game = Game.find_by(user_id: current_user.id)
  end

  def user_params
    params.permit(:level, :card_name, :address, :date, :code, :card_number)
  end
end
