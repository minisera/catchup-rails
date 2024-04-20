class CreateAccounts < ActiveRecord::Migration[7.0]
  def change
    create_table :accounts do |t|
      t.integer :balance, null: false, comment: '残高'
      t.timestamps
    end
  end
end
