class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :customer_name
      t.integer :phone_number
      t.timestamps null: false
    end 
  end
end
