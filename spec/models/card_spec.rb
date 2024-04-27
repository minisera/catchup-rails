require 'rails_helper'

RSpec.describe Card, type: :model do
  describe "Card#new" do
    context "インスタンスを作成したとき" do
      it "7桁のcard.numberが生成される" do
        card = Card.new(
          account_id: 1,
          user_id: 1
        )
        expect(card.number.length).to eq(7)
      end
    end
  end
  describe "Card#save" do
    context "データベースに保存するとき" do
      it "card.numberが7桁であれば実行される" do
        user = User.create(
          name: "ホゲ太郎",
          email: "hoge@example.com"
        )
        account = Account.create(balance: 0)
        card = Card.new(
          account_id: account.id,
          user_id: user.id
        )
        actual = card.save
        expect(actual).to eq(true)
      end
      it "card.numberが7桁でなければ実行されない" do
        user = User.create(
          name: "ホゲ太郎",
          email: "hoge@example.com"
        )
        account = Account.create(balance: 0)
        card = Card.new(
          account_id: account.id,
          user_id: user.id
        )
        card.number = "123456"
        actual = card.save
        expect(actual).to eq(false)
      end
    end
  end
end
