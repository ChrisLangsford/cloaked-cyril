class CreateCostings < ActiveRecord::Migration
  def change
    create_table :costings do |t|
      t.string :cost_status
      t.decimal :labour_cost
      t.decimal :fabric_cost
      t.decimal :acc_cost
      t.decimal :misc_cost
      t.references :garment, index: true

      t.timestamps
    end
  end
end
