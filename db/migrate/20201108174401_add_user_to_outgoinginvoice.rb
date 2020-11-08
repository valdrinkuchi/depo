class AddUserToOutgoinginvoice < ActiveRecord::Migration[6.0]
  def change
    add_reference :outgoinginvoices, :user, null: false, foreign_key: true
  end
end
