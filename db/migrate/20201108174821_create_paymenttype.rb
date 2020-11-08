class CreatePaymenttype < ActiveRecord::Migration[6.0]
  def change
    create_table :paymenttypes do |t|
      t.string :name
    end
  end
end
