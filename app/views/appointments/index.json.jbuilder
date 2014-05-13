json.array!(@appointments) do |appointment|
  json.extract! appointment, :id, :date, :time, :comments, :follow_up, :customer_id
  json.url appointment_url(appointment, format: :json)
end
