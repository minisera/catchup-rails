class Card < ApplicationRecord
  belongs_to :account
  belongs_to :user

  # ドメインロジック
  # numberは最大7桁でないとならない。7に満たない場合は先頭から0が埋められる。
  validates :number, presence: true, length: {is: 7}
end
