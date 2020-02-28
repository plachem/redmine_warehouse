class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name
      t.decimal :price
      t.integer :count
      t.date :manufacture_date
      t.references :issue, foreign_key: true
    end
  end
end
