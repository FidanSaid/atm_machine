class CreateAtmMachines < ActiveRecord::Migration
  def change
    create_table :atm_machines do |t|
      t.string :name
      t.string :city
      t.string :state
      t.string :zipcode
      t.string :street

      t.timestamps null: false
    end
  end
end
