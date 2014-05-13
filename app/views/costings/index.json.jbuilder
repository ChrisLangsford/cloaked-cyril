json.array!(@costings) do |costing|
  json.extract! costing, :id, :cost_date, :cost_status, :labour_cost, :fabric_cost, :acc_cost, :misc_cost, :garment_id
  json.url costing_url(costing, format: :json)
end
