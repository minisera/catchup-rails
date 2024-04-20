class CreateCards < ActiveRecord::Migration[7.0]
  def change
    create_table :cards do |t|
      t.belongs_to :account
      t.belongs_to :user
      t.integer :number, null: false
      t.timestamps
    end
  end
end
