Appointment.create!([
  {date: "2014-07-07", time: "2000-01-01 09:00:00", comments: "meeting", follow_up: false, customer_id: 1},
  {date: "2014-07-09", time: "2000-01-01 09:00:00", comments: "collect", follow_up: false, customer_id: 1},
  {date: "2014-07-09", time: "2000-01-01 10:00:00", comments: "Meeting", follow_up: false, customer_id: 1}
])
Costing.create!([
  {labour_cost: "100.0", fabric_cost: "100.0", acc_cost: "10.0", misc_cost: "0.0", garment_id: 1},
  {labour_cost: "25.0", fabric_cost: "25.0", acc_cost: "0.0", misc_cost: "0.0", garment_id: 2},
  {labour_cost: "25.0", fabric_cost: "25.0", acc_cost: "0.0", misc_cost: "0.0", garment_id: 3}
])
Customer.create!([
  {first_name: "Chris", last_name: "Langsford", contact_no: "0833841037", email: "langz020@gmail.com"}
])
Expense.create!([
  {period_end_date: "Feb 2014", habby: "100.0", bank_charge: "120.0", equipment: "140.0", stationery: "200.0", computer: "250.0", telephone: "300.0", misc_expense: "250.0"},
  {period_end_date: "Aug 2014", habby: "200.0", bank_charge: "300.0", equipment: "200.0", stationery: "300.0", computer: "200.0", telephone: "300.0", misc_expense: "200.0"}
])
Garment.create!([
  {garment_type: "Other", garment_description: "Onesie", order_id: 1, bust: "0.0", under_bust: "0.0", waist: "0.0", hip_upper: "0.0", hip_lower: "0.0", bust_point: "0.0", front_length: "0.0", shoulder_to_under_bust: "0.0", back_length: "0.0", across_back: "0.0", shoulderlength: "0.0", skirt_length: "0.0", sleeve_length: "0.0", sleeve_width_upper: "0.0", sleeve_width_elbow: "0.0", sleeve_width_wrist: "0.0", pants_length: "0.0", jacket_length: "0.0"},
  {garment_type: "Formal wear", garment_description: "Red Tie", order_id: 2, bust: "0.0", under_bust: "0.0", waist: "0.0", hip_upper: "0.0", hip_lower: "0.0", bust_point: "0.0", front_length: "0.0", shoulder_to_under_bust: "0.0", back_length: "0.0", across_back: "0.0", shoulderlength: "0.0", skirt_length: "0.0", sleeve_length: "0.0", sleeve_width_upper: "0.0", sleeve_width_elbow: "0.0", sleeve_width_wrist: "0.0", pants_length: "0.0", jacket_length: "0.0"},
  {garment_type: "Formal wear", garment_description: "Green Tie", order_id: 2, bust: "0.0", under_bust: "0.0", waist: "0.0", hip_upper: "0.0", hip_lower: "0.0", bust_point: "0.0", front_length: "0.0", shoulder_to_under_bust: "0.0", back_length: "0.0", across_back: "0.0", shoulderlength: "0.0", skirt_length: "0.0", sleeve_length: "0.0", sleeve_width_upper: "0.0", sleeve_width_elbow: "0.0", sleeve_width_wrist: "0.0", pants_length: "0.0", jacket_length: "0.0"}
])
Order.create!([
  {order_description: "Onesie", due_date: "2014-07-11", customer_value_index: "8.0", closed: true, customer_id: 1},
  {order_description: "Ties", due_date: "2014-07-14", customer_value_index: nil, closed: false, customer_id: 1}
])
