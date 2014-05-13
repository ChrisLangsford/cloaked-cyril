class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.date :date
      t.time :time
      t.text :comments
      t.boolean :follow_up
      t.references :customer, index: true

      t.timestamps
    end
  end
end
