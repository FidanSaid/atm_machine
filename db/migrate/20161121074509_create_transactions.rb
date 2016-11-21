class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.integer :account_id
      t.decimal :amount
      t.string :merchandise_name
      t.references :account, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
