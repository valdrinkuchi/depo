class CreateProduct < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :description
      t.string :unit
      t.decimal :unit_price
      t.integer :count
      t.decimal :retail_price
      t.string :dimensions
      t.references :productcategory, null: false, foreign_key: true
    end
  end
end
