class CardsController < ApplicationController
  def create
    account = Account.create
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
