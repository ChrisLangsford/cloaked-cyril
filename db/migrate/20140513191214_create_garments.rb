class CreateGarments < ActiveRecord::Migration
  def change
    create_table :garments do |t|
      t.string :garment_type
      t.text :garment_description
      t.references :order, index: true
      t.decimal :bust
      t.decimal :under_bust
      t.decimal :waist
      t.decimal :hip_upper
      t.decimal :hip_lower
      t.decimal :bust_point
      t.decimal :front_length
      t.decimal :shoulder_to_under_bust
      t.decimal :back_length
      t.decimal :across_back
      t.decimal :shoulderlength
      t.decimal :skirt_length
      t.decimal :sleeve_length
      t.decimal :sleeve_width_upper
      t.decimal :sleeve_width_elbow
      t.decimal :sleeve_width_wrist
      t.decimal :pants_length
      t.decimal :jacket_length

      t.timestamps
    end
  end
end
