class CreateOrderItems < ActiveRecord::Migration[6.1]
  def change
    create_table :order_items do |t|
      t.integer :qty
      t.references :shoe, null: false, foreign_key: true
      t.references :order, null: false, foreign_key: true
      t.float :total
      t.float :unit_price

      t.timestamps
    end
  end
end
