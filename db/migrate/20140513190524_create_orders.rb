class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.text :order_description
      t.date :due_date
      t.decimal :customer_value_index
      t.boolean :closed
      t.references :customer, index: true

      t.timestamps
    end
  end
end
