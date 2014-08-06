Appointment.create!([
  {date: "2014-07-07", time: "2000-01-01 09:00:00", comments: "Meeting", follow_up: false, customer_id: 1}  
])
Costing.create!([
  {labour_cost: "100.0", fabric_cost: "100.0", acc_cost: "0.0", misc_cost: "0.0", garment_id: 1},  
  {labour_cost: "100.0", fabric_cost: "100.0", acc_cost: "0.0", misc_cost: "0.0", garment_id: 2},  
  {labour_cost: "100.0", fabric_cost: "100.0", acc_cost: "0.0", misc_cost: "0.0", garment_id: 3},  
  {labour_cost: "100.0", fabric_cost: "100.0", acc_cost: "0.0", misc_cost: "0.0", garment_id: 4},  
  {labour_cost: "100.0", fabric_cost: "100.0", acc_cost: "0.0", misc_cost: "0.0", garment_id: 5},  
  {labour_cost: "100.0", fabric_cost: "100.0", acc_cost: "0.0", misc_cost: "0.0", garment_id: 6},  
  {labour_cost: "100.0", fabric_cost: "100.0", acc_cost: "0.0", misc_cost: "0.0", garment_id: 7},  
  {labour_cost: "100.0", fabric_cost: "100.0", acc_cost: "0.0", misc_cost: "0.0", garment_id: 8},  
  {labour_cost: "100.0", fabric_cost: "100.0", acc_cost: "0.0", misc_cost: "0.0", garment_id: 9},  
  {labour_cost: "100.0", fabric_cost: "100.0", acc_cost: "0.0", misc_cost: "0.0", garment_id: 10},  
  {labour_cost: "100.0", fabric_cost: "100.0", acc_cost: "0.0", misc_cost: "0.0", garment_id: 11},  
  {labour_cost: "100.0", fabric_cost: "100.0", acc_cost: "0.0", misc_cost: "0.0", garment_id: 12},  
  {labour_cost: "100.0", fabric_cost: "100.0", acc_cost: "0.0", misc_cost: "0.0", garment_id: 13},  
  {labour_cost: "100.0", fabric_cost: "100.0", acc_cost: "0.0", misc_cost: "0.0", garment_id: 14},  
  {labour_cost: "100.0", fabric_cost: "100.0", acc_cost: "0.0", misc_cost: "0.0", garment_id: 15},  
  {labour_cost: "100.0", fabric_cost: "100.0", acc_cost: "0.0", misc_cost: "0.0", garment_id: 16},  
  {labour_cost: "100.0", fabric_cost: "100.0", acc_cost: "0.0", misc_cost: "0.0", garment_id: 17},  
  {labour_cost: "100.0", fabric_cost: "100.0", acc_cost: "0.0", misc_cost: "0.0", garment_id: 18},  
  {labour_cost: "100.0", fabric_cost: "100.0", acc_cost: "0.0", misc_cost: "0.0", garment_id: 19},  
  {labour_cost: "100.0", fabric_cost: "100.0", acc_cost: "0.0", misc_cost: "0.0", garment_id: 20},  
])
Customer.create!([
  {first_name: "Chris", last_name: "Langsford", contact_no: "0833841037", email: "langz020@gmail.com"},
  {first_name: "Fallon", last_name: "Amadori", contact_no: "0833841037", email: "langz020@gmail.com"},
  {first_name: "Missy", last_name: "Victorson", contact_no: "0833841037", email: "langz020@gmail.com"},
  {first_name: "Leila", last_name: "Marmo", contact_no: "0833841037", email: "langz020@gmail.com"},
  {first_name: "Lilian", last_name: "Hill", contact_no: "0833841037", email: "langz020@gmail.com"},
  {first_name: "Sharon", last_name: "Christinsen", contact_no: "0833841037", email: "langz020@gmail.com"},
  {first_name: "Quincey", last_name: "Rupertson", contact_no: "0833841037", email: "langz020@gmail.com"},
  {first_name: "Savio", last_name: "Jacobson", contact_no: "0833841037", email: "langz020@gmail.com"},
  {first_name: "Jim", last_name: "Rapallino", contact_no: "0833841037", email: "langz020@gmail.com"},
  {first_name: "Gabriella", last_name: "Bateson", contact_no: "0833841037", email: "langz020@gmail.com"}
])
Expense.create!([
  {period_end_date: "Feb 2014", habby: "100.0", bank_charge: "120.0", equipment: "140.0", stationery: "200.0", computer: "250.0", telephone: "300.0", misc_expense: "250.0"},
  {period_end_date: "Aug 2014", habby: "200.0", bank_charge: "300.0", equipment: "200.0", stationery: "300.0", computer: "200.0", telephone: "300.0", misc_expense: "200.0"}
])
Garment.create!([
  {garment_type: "Wedding Dress", garment_description: "Boob-tube modern", order_id: 1, bust: "0.0", under_bust: "0.0", waist: "0.0", hip_upper: "0.0", hip_lower: "0.0", bust_point: "0.0", front_length: "0.0", shoulder_to_under_bust: "0.0", back_length: "0.0", across_back: "0.0", shoulderlength: "0.0", skirt_length: "0.0", sleeve_length: "0.0", sleeve_width_upper: "0.0", sleeve_width_elbow: "0.0", sleeve_width_wrist: "0.0", pants_length: "0.0", jacket_length: "0.0"},
  {garment_type: "Matric Farewell", garment_description: "Camo onesie", order_id: 2, bust: "0.0", under_bust: "0.0", waist: "0.0", hip_upper: "0.0", hip_lower: "0.0", bust_point: "0.0", front_length: "0.0", shoulder_to_under_bust: "0.0", back_length: "0.0", across_back: "0.0", shoulderlength: "0.0", skirt_length: "0.0", sleeve_length: "0.0", sleeve_width_upper: "0.0", sleeve_width_elbow: "0.0", sleeve_width_wrist: "0.0", pants_length: "0.0", jacket_length: "0.0"},
  {garment_type: "Formal wear", garment_description: "Camo onesie", order_id: 3, bust: "0.0", under_bust: "0.0", waist: "0.0", hip_upper: "0.0", hip_lower: "0.0", bust_point: "0.0", front_length: "0.0", shoulder_to_under_bust: "0.0", back_length: "0.0", across_back: "0.0", shoulderlength: "0.0", skirt_length: "0.0", sleeve_length: "0.0", sleeve_width_upper: "0.0", sleeve_width_elbow: "0.0", sleeve_width_wrist: "0.0", pants_length: "0.0", jacket_length: "0.0"},
  {garment_type: "Work wear", garment_description: "Camo onesie", order_id: 4, bust: "0.0", under_bust: "0.0", waist: "0.0", hip_upper: "0.0", hip_lower: "0.0", bust_point: "0.0", front_length: "0.0", shoulder_to_under_bust: "0.0", back_length: "0.0", across_back: "0.0", shoulderlength: "0.0", skirt_length: "0.0", sleeve_length: "0.0", sleeve_width_upper: "0.0", sleeve_width_elbow: "0.0", sleeve_width_wrist: "0.0", pants_length: "0.0", jacket_length: "0.0"},
  {garment_type: "Alterations", garment_description: "Camo onesie", order_id: 5, bust: "0.0", under_bust: "0.0", waist: "0.0", hip_upper: "0.0", hip_lower: "0.0", bust_point: "0.0", front_length: "0.0", shoulder_to_under_bust: "0.0", back_length: "0.0", across_back: "0.0", shoulderlength: "0.0", skirt_length: "0.0", sleeve_length: "0.0", sleeve_width_upper: "0.0", sleeve_width_elbow: "0.0", sleeve_width_wrist: "0.0", pants_length: "0.0", jacket_length: "0.0"},
  {garment_type: "Other", garment_description: "Camo onesie", order_id: 6, bust: "0.0", under_bust: "0.0", waist: "0.0", hip_upper: "0.0", hip_lower: "0.0", bust_point: "0.0", front_length: "0.0", shoulder_to_under_bust: "0.0", back_length: "0.0", across_back: "0.0", shoulderlength: "0.0", skirt_length: "0.0", sleeve_length: "0.0", sleeve_width_upper: "0.0", sleeve_width_elbow: "0.0", sleeve_width_wrist: "0.0", pants_length: "0.0", jacket_length: "0.0"},
  {garment_type: "Other", garment_description: "Camo onesie", order_id: 7, bust: "0.0", under_bust: "0.0", waist: "0.0", hip_upper: "0.0", hip_lower: "0.0", bust_point: "0.0", front_length: "0.0", shoulder_to_under_bust: "0.0", back_length: "0.0", across_back: "0.0", shoulderlength: "0.0", skirt_length: "0.0", sleeve_length: "0.0", sleeve_width_upper: "0.0", sleeve_width_elbow: "0.0", sleeve_width_wrist: "0.0", pants_length: "0.0", jacket_length: "0.0"},
  {garment_type: "Wedding Dress", garment_description: "Camo onesie", order_id: 8, bust: "0.0", under_bust: "0.0", waist: "0.0", hip_upper: "0.0", hip_lower: "0.0", bust_point: "0.0", front_length: "0.0", shoulder_to_under_bust: "0.0", back_length: "0.0", across_back: "0.0", shoulderlength: "0.0", skirt_length: "0.0", sleeve_length: "0.0", sleeve_width_upper: "0.0", sleeve_width_elbow: "0.0", sleeve_width_wrist: "0.0", pants_length: "0.0", jacket_length: "0.0"},
  {garment_type: "Matric Farewell", garment_description: "Camo onesie", order_id: 9, bust: "0.0", under_bust: "0.0", waist: "0.0", hip_upper: "0.0", hip_lower: "0.0", bust_point: "0.0", front_length: "0.0", shoulder_to_under_bust: "0.0", back_length: "0.0", across_back: "0.0", shoulderlength: "0.0", skirt_length: "0.0", sleeve_length: "0.0", sleeve_width_upper: "0.0", sleeve_width_elbow: "0.0", sleeve_width_wrist: "0.0", pants_length: "0.0", jacket_length: "0.0"},
  {garment_type: "Formal wear", garment_description: "Camo onesie", order_id: 10, bust: "0.0", under_bust: "0.0", waist: "0.0", hip_upper: "0.0", hip_lower: "0.0", bust_point: "0.0", front_length: "0.0", shoulder_to_under_bust: "0.0", back_length: "0.0", across_back: "0.0", shoulderlength: "0.0", skirt_length: "0.0", sleeve_length: "0.0", sleeve_width_upper: "0.0", sleeve_width_elbow: "0.0", sleeve_width_wrist: "0.0", pants_length: "0.0", jacket_length: "0.0"},
  {garment_type: "Work wear", garment_description: "Camo onesie", order_id: 11, bust: "0.0", under_bust: "0.0", waist: "0.0", hip_upper: "0.0", hip_lower: "0.0", bust_point: "0.0", front_length: "0.0", shoulder_to_under_bust: "0.0", back_length: "0.0", across_back: "0.0", shoulderlength: "0.0", skirt_length: "0.0", sleeve_length: "0.0", sleeve_width_upper: "0.0", sleeve_width_elbow: "0.0", sleeve_width_wrist: "0.0", pants_length: "0.0", jacket_length: "0.0"},
  {garment_type: "Alterations", garment_description: "Camo onesie", order_id: 12, bust: "0.0", under_bust: "0.0", waist: "0.0", hip_upper: "0.0", hip_lower: "0.0", bust_point: "0.0", front_length: "0.0", shoulder_to_under_bust: "0.0", back_length: "0.0", across_back: "0.0", shoulderlength: "0.0", skirt_length: "0.0", sleeve_length: "0.0", sleeve_width_upper: "0.0", sleeve_width_elbow: "0.0", sleeve_width_wrist: "0.0", pants_length: "0.0", jacket_length: "0.0"},
  {garment_type: "Other", garment_description: "Camo onesie", order_id: 13, bust: "0.0", under_bust: "0.0", waist: "0.0", hip_upper: "0.0", hip_lower: "0.0", bust_point: "0.0", front_length: "0.0", shoulder_to_under_bust: "0.0", back_length: "0.0", across_back: "0.0", shoulderlength: "0.0", skirt_length: "0.0", sleeve_length: "0.0", sleeve_width_upper: "0.0", sleeve_width_elbow: "0.0", sleeve_width_wrist: "0.0", pants_length: "0.0", jacket_length: "0.0"},
  {garment_type: "Wedding Dress", garment_description: "Camo onesie", order_id: 14, bust: "0.0", under_bust: "0.0", waist: "0.0", hip_upper: "0.0", hip_lower: "0.0", bust_point: "0.0", front_length: "0.0", shoulder_to_under_bust: "0.0", back_length: "0.0", across_back: "0.0", shoulderlength: "0.0", skirt_length: "0.0", sleeve_length: "0.0", sleeve_width_upper: "0.0", sleeve_width_elbow: "0.0", sleeve_width_wrist: "0.0", pants_length: "0.0", jacket_length: "0.0"},
  {garment_type: "Matric Farewell", garment_description: "Camo onesie", order_id: 15, bust: "0.0", under_bust: "0.0", waist: "0.0", hip_upper: "0.0", hip_lower: "0.0", bust_point: "0.0", front_length: "0.0", shoulder_to_under_bust: "0.0", back_length: "0.0", across_back: "0.0", shoulderlength: "0.0", skirt_length: "0.0", sleeve_length: "0.0", sleeve_width_upper: "0.0", sleeve_width_elbow: "0.0", sleeve_width_wrist: "0.0", pants_length: "0.0", jacket_length: "0.0"},
  {garment_type: "Matric Farewell", garment_description: "Camo onesie", order_id: 16, bust: "0.0", under_bust: "0.0", waist: "0.0", hip_upper: "0.0", hip_lower: "0.0", bust_point: "0.0", front_length: "0.0", shoulder_to_under_bust: "0.0", back_length: "0.0", across_back: "0.0", shoulderlength: "0.0", skirt_length: "0.0", sleeve_length: "0.0", sleeve_width_upper: "0.0", sleeve_width_elbow: "0.0", sleeve_width_wrist: "0.0", pants_length: "0.0", jacket_length: "0.0"},
  {garment_type: "Formal wear", garment_description: "Camo onesie", order_id: 17, bust: "0.0", under_bust: "0.0", waist: "0.0", hip_upper: "0.0", hip_lower: "0.0", bust_point: "0.0", front_length: "0.0", shoulder_to_under_bust: "0.0", back_length: "0.0", across_back: "0.0", shoulderlength: "0.0", skirt_length: "0.0", sleeve_length: "0.0", sleeve_width_upper: "0.0", sleeve_width_elbow: "0.0", sleeve_width_wrist: "0.0", pants_length: "0.0", jacket_length: "0.0"},
  {garment_type: "Alterations", garment_description: "Camo onesie", order_id: 18, bust: "0.0", under_bust: "0.0", waist: "0.0", hip_upper: "0.0", hip_lower: "0.0", bust_point: "0.0", front_length: "0.0", shoulder_to_under_bust: "0.0", back_length: "0.0", across_back: "0.0", shoulderlength: "0.0", skirt_length: "0.0", sleeve_length: "0.0", sleeve_width_upper: "0.0", sleeve_width_elbow: "0.0", sleeve_width_wrist: "0.0", pants_length: "0.0", jacket_length: "0.0"},
  {garment_type: "Work wear", garment_description: "Camo onesie", order_id: 19, bust: "0.0", under_bust: "0.0", waist: "0.0", hip_upper: "0.0", hip_lower: "0.0", bust_point: "0.0", front_length: "0.0", shoulder_to_under_bust: "0.0", back_length: "0.0", across_back: "0.0", shoulderlength: "0.0", skirt_length: "0.0", sleeve_length: "0.0", sleeve_width_upper: "0.0", sleeve_width_elbow: "0.0", sleeve_width_wrist: "0.0", pants_length: "0.0", jacket_length: "0.0"},
  {garment_type: "Other", garment_description: "Camo onesie", order_id: 20, bust: "0.0", under_bust: "0.0", waist: "0.0", hip_upper: "0.0", hip_lower: "0.0", bust_point: "0.0", front_length: "0.0", shoulder_to_under_bust: "0.0", back_length: "0.0", across_back: "0.0", shoulderlength: "0.0", skirt_length: "0.0", sleeve_length: "0.0", sleeve_width_upper: "0.0", sleeve_width_elbow: "0.0", sleeve_width_wrist: "0.0", pants_length: "0.0", jacket_length: "0.0"}
])
Order.create!([
  {order_description: "Onesie", due_date: "2013-06-11", customer_value_index: "8.0", closed: true, customer_id: 1},
  {order_description: "Onesie", due_date: "2013-07-11", customer_value_index: "7.5", closed: false, customer_id: 2},
  {order_description: "Onesie", due_date: "2013-07-11", customer_value_index: "7.0", closed: false, customer_id: 3},
  {order_description: "Onesie", due_date: "2013-08-11", customer_value_index: "6.0", closed: false, customer_id: 4},
  {order_description: "Onesie", due_date: "2013-09-11", customer_value_index: "6.5", closed: false, customer_id: 5},
  {order_description: "Onesie", due_date: "2014-01-11", customer_value_index: "5", closed: false, customer_id: 6},
  {order_description: "Onesie", due_date: "2014-02-11", customer_value_index: "4.0", closed: false, customer_id: 7},
  {order_description: "Onesie", due_date: "2014-02-11", customer_value_index: "3.0", closed: false, customer_id: 8},
  {order_description: "Onesie", due_date: "2014-03-11", customer_value_index: "2.0", closed: false, customer_id: 9},
  {order_description: "Onesie", due_date: "2014-03-11", customer_value_index: "1.0", closed: false, customer_id: 10},
  {order_description: "Onesie", due_date: "2014-04-11", customer_value_index: "8.0", closed: false, customer_id: 1},
  {order_description: "Onesie", due_date: "2014-05-11", customer_value_index: "7.7", closed: false, customer_id: 2},
  {order_description: "Onesie", due_date: "2014-06-11", customer_value_index: "7.5", closed: false, customer_id: 3},
  {order_description: "Onesie", due_date: "2015-02-11", customer_value_index: "7.0", closed: false, customer_id: 4},
  {order_description: "Onesie", due_date: "2015-02-11", customer_value_index: "6.0", closed: false, customer_id: 5},
  {order_description: "Onesie", due_date: "2015-03-11", customer_value_index: "5.0", closed: false, customer_id: 6},
  {order_description: "Onesie", due_date: "2015-04-11", customer_value_index: "4.0", closed: false, customer_id: 7},
  {order_description: "Onesie", due_date: "2015-05-11", customer_value_index: "3.0", closed: false, customer_id: 8},
  {order_description: "Onesie", due_date: "2015-05-11", customer_value_index: "2.0", closed: false, customer_id: 9},
  {order_description: "Onesie", due_date: "2015-06-11", customer_value_index: "1.0", closed: false, customer_id: 10}
])
