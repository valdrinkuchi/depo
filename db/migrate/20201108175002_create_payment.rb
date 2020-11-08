class CreatePayment < ActiveRecord::Migration[6.0]
  def change
    create_table :payments do |t|
      t.float :amount
      t.references :incominginvoice, null: false, foreign_key: true
      t.references :paymenttype, null: false, foreign_key: true
    end
  end
end
