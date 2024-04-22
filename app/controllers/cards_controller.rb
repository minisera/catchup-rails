class CardsController < ApplicationController
  def create
    account = Account.create(balance: 0)
    card = Card.new(
      account_id: account.id,
      user_id: params[:user_id],
      number: card_params[:number]
    )
    if card.save
      render json: card, status: :created
    else
      render json: card.errors, status: :unprocessable_entity
    end
  end
  
  private
  def card_params
    params.require(:card).permit(:number)
  end
end
