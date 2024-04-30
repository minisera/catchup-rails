class CreatePayments < ActiveRecord::Migration[7.0]
  def change
    create_table :payments do |t|
      t.belongs_to :card, null: false, foreign_keys: true
      t.integer :amount, null: false
      t.timestamps
    end
  end
end
