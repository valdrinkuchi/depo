class CreateIncominginvoices < ActiveRecord::Migration[6.0]
  def change
    create_table :incominginvoices do |t|
      t.string :number
      t.date :date
      t.references :supplier, null: false, foreign_key: true
      t.float :amount

      t.timestamps
    end
  end
end
