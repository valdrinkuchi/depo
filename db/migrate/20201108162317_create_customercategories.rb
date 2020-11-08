class CreateCustomercategories < ActiveRecord::Migration[6.0]
  def change
    create_table :customercategories do |t|
      t.string :type

      t.timestamps
    end
  end
end
