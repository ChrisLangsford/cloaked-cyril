class CreateExpenses < ActiveRecord::Migration
  def change
    create_table :expenses do |t|
      t.date :period_end_date
      t.decimal :habby
      t.decimal :bank_charge
      t.decimal :equipment
      t.decimal :stationery
      t.decimal :computer
      t.decimal :telephone
      t.decimal :misc_expense

      t.timestamps
    end
  end
end
