require 'rails_helper'

RSpec.describe "Payments", type: :request do
  describe "POST /payments" do
    context "カードで支払いを行った時" do
      it "口座残高が減る" do
        user = User.create(email: "user@example.com", name: "ホゲたろう")
        account = Account.create(balance: 5000)
        Card.create(
          user_id: user.id,
          account_id: account.id,
          number: 1234567
        )
        expect {
          post "http://localhost:3001/users/#{user.id}/payments",
            params: {card_number: 1234567, amount: 1000}, as: :json
        }.to change(Payment, :count).by(1)

        expect(Account.find(account.id).balance).to eq(4000)
      end
    end
  end
end
