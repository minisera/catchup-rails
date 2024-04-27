class CardsController < ApplicationController
  def create
    account = Account.create(balance: 0)
    card = Card.new(
      account_id: account.id,
      user_id: params[:user_id]
    )
    if card.save
      render json: card, status: :created
    else
      render json: card.errors, status: :unprocessable_entity
    end
  end
end
