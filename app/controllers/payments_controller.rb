class PaymentsController < ApplicationController
  def payment
    card = Card.find_by(user_id: params[:user_id])
    account = Account.find(card.account_id)

    if params[:amount] <= account.balance
      payment = Payment.create(amount: params[:amount], card_id: card.id)
      render json: payment, status: :created
    else
      render status: :unprocessable_entity
    end
  end
end
