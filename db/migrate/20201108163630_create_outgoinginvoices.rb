class CreateOutgoinginvoices < ActiveRecord::Migration[6.0]
  def change
    create_table :outgoinginvoices do |t|
      t.string :number
      t.date :date
      t.references :customer, null: false, foreign_key: true

      t.timestamps
    end
  end
end
