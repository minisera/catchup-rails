class CreateCards < ActiveRecord::Migration[7.0]
  def change
    create_table :cards do |t|
      t.belongs_to :account, null: false, foreign_key: true
      t.belongs_to :user, null: false, foreign_key: true
      t.string :number, null: false
      t.timestamps
    end
  end
end
