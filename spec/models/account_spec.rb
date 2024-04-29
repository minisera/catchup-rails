require "rails_helper"

RSpec.describe Account, type: :model do
  describe "User#new" do
    context "インスタンスを作成した時" do
      it "口座残高が0円で作成される" do
        account = Account.new
        expect(account.balance).to eq(0)
      end
    end
  end

  describe "User#create" do
    context "インスタンスを作成して保存する時" do
      it "口座残高が0円でデータベースに保存される" do
        account = Account.create
        p account
        expect(account.balance).to eq(0)
      end
    end
  end
end
