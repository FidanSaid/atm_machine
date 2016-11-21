class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.integer :account_number
      t.string :status
      t.decimal :balance
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
