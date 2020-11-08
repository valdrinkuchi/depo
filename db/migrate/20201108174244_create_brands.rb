class CreateBrands < ActiveRecord::Migration[6.0]
  def change
    create_table :brands do |t|
      t.string :name
      t.string :description
      t.references :supplier, null: false, foreign_key: true
    end
  end
end
