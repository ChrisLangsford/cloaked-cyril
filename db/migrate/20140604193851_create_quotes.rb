class CreateQuotes < ActiveRecord::Migration
  def change
    create_table :quotes do |t|
      t.references :order, index: true

      t.timestamps
    end
  end
end
