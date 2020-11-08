class AddUserToPayment < ActiveRecord::Migration[6.0]
  def change
    add_reference :payments, :user, null: false, foreign_key: true
  end
end
