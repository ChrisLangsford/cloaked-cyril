json.array!(@garments) do |garment|
  json.extract! garment, :id, :garment_type, :garment_description, :order_id, :bust, :under_bust, :waist, :hip_upper, :hip_lower, :bust_point, :front_length, :shoulder_to_under_bust, :back_length, :across_back, :shoulderlength, :skirt_length, :sleeve_length, :sleeve_width_upper, :sleeve_width_elbow, :sleeve_width_wrist, :pants_length, :jacket_length
  json.url garment_url(garment, format: :json)
end
