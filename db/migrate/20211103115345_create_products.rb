class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string :title
      t.integer :quantity
      t.string :img
      t.text :description

      t.timestamps
    end
  end
end
