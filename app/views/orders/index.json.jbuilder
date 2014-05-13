json.array!(@orders) do |order|
  json.extract! order, :id, :order_description, :due_date, :customer_value_index, :closed, :customer_id
  json.url order_url(order, format: :json)
end
