class Account < ApplicationRecord
  has_many :cards

  def initialize(attributes = {})
    super
    set_balance
  end

  def set_balance(amount = 0)
    self.balance = amount
  end
end
