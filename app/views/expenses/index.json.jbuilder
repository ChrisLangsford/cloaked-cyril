json.array!(@expenses) do |expense|
  json.extract! expense, :id, :period_end_date, :habby, :bank_charge, :equipment, :stationery, :computer, :telephone, :misc_expense
  json.url expense_url(expense, format: :json)
end
