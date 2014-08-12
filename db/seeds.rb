Appointment.create!([
  {date: "2014-07-07", time: "2000-01-01 01:00:00", comments: "Meeting", follow_up: false, customer_id: 1},  
  {date: "2014-07-07", time: "2000-01-01 02:00:00", comments: "Meeting", follow_up: false, customer_id: 2},  
  {date: "2014-07-07", time: "2000-01-01 03:00:00", comments: "Meeting", follow_up: false, customer_id: 3},  
  {date: "2014-07-07", time: "2000-01-01 04:00:00", comments: "Meeting", follow_up: false, customer_id: 4},  
  {date: "2014-07-07", time: "2000-01-01 05:00:00", comments: "Meeting", follow_up: false, customer_id: 5},  
  {date: "2014-07-07", time: "2000-01-01 06:00:00", comments: "Meeting", follow_up: false, customer_id: 6},  
  {date: "2014-07-07", time: "2000-01-01 07:00:00", comments: "Meeting", follow_up: false, customer_id: 7},  
  {date: "2014-07-07", time: "2000-01-01 08:00:00", comments: "Meeting", follow_up: false, customer_id: 8},  
  {date: "2014-07-07", time: "2000-01-01 09:00:00", comments: "Meeting", follow_up: false, customer_id: 9},  
  {date: "2014-07-07", time: "2000-01-01 10:00:00", comments: "Meeting", follow_up: false, customer_id: 10},  
  {date: "2014-07-07", time: "2000-01-01 11:00:00", comments: "Meeting", follow_up: false, customer_id: 1},  
  {date: "2014-07-07", time: "2000-01-01 12:00:00", comments: "Meeting", follow_up: false, customer_id: 2},  
  {date: "2014-07-07", time: "2000-01-01 13:00:00", comments: "Meeting", follow_up: false, customer_id: 3},  
  {date: "2014-07-07", time: "2000-01-01 14:00:00", comments: "Meeting", follow_up: false, customer_id: 4},  
  {date: "2014-07-07", time: "2000-01-01 15:00:00", comments: "Meeting", follow_up: false, customer_id: 5},  
  {date: "2014-07-07", time: "2000-01-01 16:00:00", comments: "Meeting", follow_up: false, customer_id: 6},  
  {date: "2014-07-07", time: "2000-01-01 17:00:00", comments: "Meeting", follow_up: false, customer_id: 7},  
  {date: "2014-07-07", time: "2000-01-01 18:00:00", comments: "Meeting", follow_up: false, customer_id: 8},  
  {date: "2014-07-07", time: "2000-01-01 19:00:00", comments: "Meeting", follow_up: false, customer_id: 9},  
  {date: "2014-07-07", time: "2000-01-01 20:00:00", comments: "Meeting", follow_up: false, customer_id: 5}, 
  {date: "2014-07-08", time: "2000-01-01 09:00:00", comments: "Meeting", follow_up: false, customer_id: 6}, 
  {date: "2014-07-09", time: "2000-01-01 09:00:00", comments: "Meeting", follow_up: false, customer_id: 7}, 
  {date: "2014-07-10", time: "2000-01-01 09:00:00", comments: "Meeting", follow_up: false, customer_id: 8}, 
  {date: "2014-07-11", time: "2000-01-01 09:00:00", comments: "Meeting", follow_up: false, customer_id: 9}, 
  {date: "2014-08-21", time: "2000-01-01 09:00:00", comments: "Meeting", follow_up: true, customer_id: 10}, 
  {date: "2014-08-21", time: "2000-01-01 10:00:00", comments: "Meeting", follow_up: false, customer_id: 9}, 
  {date: "2014-08-21", time: "2000-01-01 11:00:00", comments: "Meeting", follow_up: false, customer_id: 8}, 
  {date: "2014-08-22", time: "2000-01-01 12:00:00", comments: "Meeting", follow_up: true, customer_id: 7}, 
  {date: "2014-08-22", time: "2000-01-01 13:00:00", comments: "Meeting", follow_up: false, customer_id: 6}, 
  {date: "2014-08-22", time: "2000-01-01 14:00:00", comments: "Meeting", follow_up: false, customer_id: 10} 
])
Costing.create!([
  {labour_cost: "1800.0", fabric_cost: "800.0", acc_cost: "400.0", misc_cost: "0.0", garment_id: 1},  
  {labour_cost: "1800.0", fabric_cost: "800.0", acc_cost: "400.0", misc_cost: "0.0", garment_id: 1},  
  {labour_cost: "1250.0", fabric_cost: "1250.0", acc_cost: "50.0", misc_cost: "0.0", garment_id: 2},  
  {labour_cost: "1250.0", fabric_cost: "1250.0", acc_cost: "50.0", misc_cost: "0.0", garment_id: 2},  
  {labour_cost: "200.0", fabric_cost: "500.0", acc_cost: "100.0", misc_cost: "50.0", garment_id: 3},  
  {labour_cost: "200.0", fabric_cost: "200.0", acc_cost: "100.0", misc_cost: "0.0", garment_id: 4},  
  {labour_cost: "200.0", fabric_cost: "200.0", acc_cost: "100.0", misc_cost: "0.0", garment_id: 4},  
  {labour_cost: "200.0", fabric_cost: "75.0", acc_cost: "0.0", misc_cost: "0.0", garment_id: 5},  
  {labour_cost: "200.0", fabric_cost: "75.0", acc_cost: "0.0", misc_cost: "0.0", garment_id: 5},  
  {labour_cost: "400.0", fabric_cost: "500.0", acc_cost: "25.0", misc_cost: "50.0", garment_id: 6},  
  {labour_cost: "400.0", fabric_cost: "500.0", acc_cost: "25.0", misc_cost: "50.0", garment_id: 6},  
  {labour_cost: "400.0", fabric_cost: "500.0", acc_cost: "25.0", misc_cost: "50.0", garment_id: 6},  
  {labour_cost: "200.0", fabric_cost: "25.0", acc_cost: "10.0", misc_cost: "0.0", garment_id: 7},  
  {labour_cost: "200.0", fabric_cost: "25.0", acc_cost: "10.0", misc_cost: "0.0", garment_id: 7},  
  {labour_cost: "200.0", fabric_cost: "25.0", acc_cost: "10.0", misc_cost: "0.0", garment_id: 7},  
  {labour_cost: "200.0", fabric_cost: "25.0", acc_cost: "10.0", misc_cost: "0.0", garment_id: 7},  
  {labour_cost: "3000.0", fabric_cost: "0.0", acc_cost: "0.0", misc_cost: "0.0", garment_id: 8},  
  {labour_cost: "3000.0", fabric_cost: "0.0", acc_cost: "0.0", misc_cost: "0.0", garment_id: 8},  
  {labour_cost: "3000.0", fabric_cost: "0.0", acc_cost: "0.0", misc_cost: "0.0", garment_id: 8},  
  {labour_cost: "1500.0", fabric_cost: "2500.0", acc_cost: "500.0", misc_cost: "600.0", garment_id: 9},  
  {labour_cost: "1500.0", fabric_cost: "2500.0", acc_cost: "500.0", misc_cost: "600.0", garment_id: 9},  
  {labour_cost: "1500.0", fabric_cost: "2500.0", acc_cost: "500.0", misc_cost: "600.0", garment_id: 9},  
  {labour_cost: "900.0", fabric_cost: "700.0", acc_cost: "100.0", misc_cost: "0.0", garment_id: 10},  
  {labour_cost: "900.0", fabric_cost: "700.0", acc_cost: "100.0", misc_cost: "0.0", garment_id: 10},  
  {labour_cost: "900.0", fabric_cost: "700.0", acc_cost: "100.0", misc_cost: "0.0", garment_id: 10},  
  {labour_cost: "900.0", fabric_cost: "700.0", acc_cost: "100.0", misc_cost: "0.0", garment_id: 10},  
  {labour_cost: "900.0", fabric_cost: "700.0", acc_cost: "100.0", misc_cost: "0.0", garment_id: 10},  
  {labour_cost: "700.0", fabric_cost: "100.0", acc_cost: "0.0", misc_cost: "0.0", garment_id: 11},  
  {labour_cost: "700.0", fabric_cost: "100.0", acc_cost: "0.0", misc_cost: "0.0", garment_id: 11},  
  {labour_cost: "700.0", fabric_cost: "100.0", acc_cost: "0.0", misc_cost: "0.0", garment_id: 11},  
  {labour_cost: "700.0", fabric_cost: "100.0", acc_cost: "0.0", misc_cost: "0.0", garment_id: 11},  
  {labour_cost: "500.0", fabric_cost: "100.0", acc_cost: "0.0", misc_cost: "0.0", garment_id: 12},  
  {labour_cost: "500.0", fabric_cost: "100.0", acc_cost: "0.0", misc_cost: "0.0", garment_id: 12},  
  {labour_cost: "500.0", fabric_cost: "100.0", acc_cost: "0.0", misc_cost: "0.0", garment_id: 12},  
  {labour_cost: "1100.0", fabric_cost: "100.0", acc_cost: "0.0", misc_cost: "0.0", garment_id: 13},  
  {labour_cost: "1100.0", fabric_cost: "100.0", acc_cost: "0.0", misc_cost: "0.0", garment_id: 13},  
  {labour_cost: "1100.0", fabric_cost: "100.0", acc_cost: "0.0", misc_cost: "0.0", garment_id: 13},  
  {labour_cost: "6000.0", fabric_cost: "0.0", acc_cost: "0.0", misc_cost: "0.0", garment_id: 14},  
  {labour_cost: "6000.0", fabric_cost: "0.0", acc_cost: "0.0", misc_cost: "0.0", garment_id: 14},  
  {labour_cost: "6000.0", fabric_cost: "0.0", acc_cost: "0.0", misc_cost: "0.0", garment_id: 14},  
  {labour_cost: "6000.0", fabric_cost: "0.0", acc_cost: "0.0", misc_cost: "0.0", garment_id: 14},  
  {labour_cost: "2000.0", fabric_cost: "0.0", acc_cost: "0.0", misc_cost: "0.0", garment_id: 15},  
  {labour_cost: "2000.0", fabric_cost: "0.0", acc_cost: "0.0", misc_cost: "0.0", garment_id: 15},  
  {labour_cost: "2000.0", fabric_cost: "0.0", acc_cost: "0.0", misc_cost: "0.0", garment_id: 15},  
  {labour_cost: "3000.0", fabric_cost: "0.0", acc_cost: "0.0", misc_cost: "0.0", garment_id: 16},  
  {labour_cost: "3000.0", fabric_cost: "0.0", acc_cost: "0.0", misc_cost: "0.0", garment_id: 16},  
  {labour_cost: "3000.0", fabric_cost: "0.0", acc_cost: "0.0", misc_cost: "0.0", garment_id: 16},  
  {labour_cost: "3000.0", fabric_cost: "0.0", acc_cost: "0.0", misc_cost: "0.0", garment_id: 16},  
  {labour_cost: "1000.0", fabric_cost: "0.0", acc_cost: "0.0", misc_cost: "0.0", garment_id: 17},  
  {labour_cost: "1000.0", fabric_cost: "0.0", acc_cost: "0.0", misc_cost: "0.0", garment_id: 17},  
  {labour_cost: "800.0", fabric_cost: "0.0", acc_cost: "0.0", misc_cost: "0.0", garment_id: 18},  
  {labour_cost: "800.0", fabric_cost: "0.0", acc_cost: "0.0", misc_cost: "0.0", garment_id: 18},  
  {labour_cost: "1000.0", fabric_cost: "0.0", acc_cost: "0.0", misc_cost: "0.0", garment_id: 19},  
  {labour_cost: "1000.0", fabric_cost: "0.0", acc_cost: "0.0", misc_cost: "0.0", garment_id: 19},  
  {labour_cost: "1000.0", fabric_cost: "0.0", acc_cost: "0.0", misc_cost: "0.0", garment_id: 19},  
  {labour_cost: "2000.0", fabric_cost: "0.0", acc_cost: "0.0", misc_cost: "0.0", garment_id: 20},  
  {labour_cost: "2000.0", fabric_cost: "0.0", acc_cost: "0.0", misc_cost: "0.0", garment_id: 20},  
  {labour_cost: "2000.0", fabric_cost: "0.0", acc_cost: "0.0", misc_cost: "0.0", garment_id: 20},  
  {labour_cost: "2500.0", fabric_cost: "0.0", acc_cost: "0.0", misc_cost: "0.0", garment_id: 21},  
  {labour_cost: "1800.0", fabric_cost: "0.0", acc_cost: "0.0", misc_cost: "0.0", garment_id: 22},  
  {labour_cost: "2700.0", fabric_cost: "0.0", acc_cost: "0.0", misc_cost: "0.0", garment_id: 23},  
  {labour_cost: "3500.0", fabric_cost: "0.0", acc_cost: "0.0", misc_cost: "0.0", garment_id: 24},  
  {labour_cost: "5500.0", fabric_cost: "0.0", acc_cost: "0.0", misc_cost: "0.0", garment_id: 25}  
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
  {garment_type: "Other", garment_description: "Camo onesie", order_id: 20, bust: "0.0", under_bust: "0.0", waist: "0.0", hip_upper: "0.0", hip_lower: "0.0", bust_point: "0.0", front_length: "0.0", shoulder_to_under_bust: "0.0", back_length: "0.0", across_back: "0.0", shoulderlength: "0.0", skirt_length: "0.0", sleeve_length: "0.0", sleeve_width_upper: "0.0", sleeve_width_elbow: "0.0", sleeve_width_wrist: "0.0", pants_length: "0.0", jacket_length: "0.0"},
  {garment_type: "Alterations", garment_description: "Camo onesie", order_id: 21, bust: "0.0", under_bust: "0.0", waist: "0.0", hip_upper: "0.0", hip_lower: "0.0", bust_point: "0.0", front_length: "0.0", shoulder_to_under_bust: "0.0", back_length: "0.0", across_back: "0.0", shoulderlength: "0.0", skirt_length: "0.0", sleeve_length: "0.0", sleeve_width_upper: "0.0", sleeve_width_elbow: "0.0", sleeve_width_wrist: "0.0", pants_length: "0.0", jacket_length: "0.0"},
  {garment_type: "Work wear", garment_description: "Camo onesie", order_id: 22, bust: "0.0", under_bust: "0.0", waist: "0.0", hip_upper: "0.0", hip_lower: "0.0", bust_point: "0.0", front_length: "0.0", shoulder_to_under_bust: "0.0", back_length: "0.0", across_back: "0.0", shoulderlength: "0.0", skirt_length: "0.0", sleeve_length: "0.0", sleeve_width_upper: "0.0", sleeve_width_elbow: "0.0", sleeve_width_wrist: "0.0", pants_length: "0.0", jacket_length: "0.0"},
  {garment_type: "Matric Farewell", garment_description: "Camo onesie", order_id: 23, bust: "0.0", under_bust: "0.0", waist: "0.0", hip_upper: "0.0", hip_lower: "0.0", bust_point: "0.0", front_length: "0.0", shoulder_to_under_bust: "0.0", back_length: "0.0", across_back: "0.0", shoulderlength: "0.0", skirt_length: "0.0", sleeve_length: "0.0", sleeve_width_upper: "0.0", sleeve_width_elbow: "0.0", sleeve_width_wrist: "0.0", pants_length: "0.0", jacket_length: "0.0"},
  {garment_type: "Matric Farewell", garment_description: "Camo onesie", order_id: 24, bust: "0.0", under_bust: "0.0", waist: "0.0", hip_upper: "0.0", hip_lower: "0.0", bust_point: "0.0", front_length: "0.0", shoulder_to_under_bust: "0.0", back_length: "0.0", across_back: "0.0", shoulderlength: "0.0", skirt_length: "0.0", sleeve_length: "0.0", sleeve_width_upper: "0.0", sleeve_width_elbow: "0.0", sleeve_width_wrist: "0.0", pants_length: "0.0", jacket_length: "0.0"},
  {garment_type: "Wedding Dress", garment_description: "Camo onesie", order_id: 25, bust: "0.0", under_bust: "0.0", waist: "0.0", hip_upper: "0.0", hip_lower: "0.0", bust_point: "0.0", front_length: "0.0", shoulder_to_under_bust: "0.0", back_length: "0.0", across_back: "0.0", shoulderlength: "0.0", skirt_length: "0.0", sleeve_length: "0.0", sleeve_width_upper: "0.0", sleeve_width_elbow: "0.0", sleeve_width_wrist: "0.0", pants_length: "0.0", jacket_length: "0.0"},
  {garment_type: "Wedding Dress", garment_description: "Camo onesie", order_id: 26, bust: "0.0", under_bust: "0.0", waist: "0.0", hip_upper: "0.0", hip_lower: "0.0", bust_point: "0.0", front_length: "0.0", shoulder_to_under_bust: "0.0", back_length: "0.0", across_back: "0.0", shoulderlength: "0.0", skirt_length: "0.0", sleeve_length: "0.0", sleeve_width_upper: "0.0", sleeve_width_elbow: "0.0", sleeve_width_wrist: "0.0", pants_length: "0.0", jacket_length: "0.0"}
])
Order.create!([
  {order_description: "Onesie", due_date: "2013-07-11", customer_value_index: "8.0", closed: true, customer_id: 1},
  {order_description: "Onesie", due_date: "2013-07-11", customer_value_index: "7.5", closed: true, customer_id: 2},
  {order_description: "Onesie", due_date: "2013-07-11", customer_value_index: "7.0", closed: true, customer_id: 3},
  {order_description: "Onesie", due_date: "2013-08-11", customer_value_index: "6.0", closed: true, customer_id: 4},
  {order_description: "Onesie", due_date: "2013-08-11", customer_value_index: "6.5", closed: true, customer_id: 5},
  {order_description: "Onesie", due_date: "2013-09-11", customer_value_index: "5", closed: true, customer_id: 6},
  {order_description: "Onesie", due_date: "2013-09-11", customer_value_index: "4.0", closed: true, customer_id: 7},
  {order_description: "Onesie", due_date: "2013-09-11", customer_value_index: "3.0", closed: true, customer_id: 8},
  {order_description: "Onesie", due_date: "2013-10-11", customer_value_index: "2.0", closed: true, customer_id: 9},
  {order_description: "Onesie", due_date: "2013-11-11", customer_value_index: "1.0", closed: true, customer_id: 10},
  {order_description: "Onesie", due_date: "2013-11-11", customer_value_index: "8.0", closed: true, customer_id: 1},
  {order_description: "Onesie", due_date: "2013-12-11", customer_value_index: "7.7", closed: true, customer_id: 2},
  {order_description: "Onesie", due_date: "2013-12-11", customer_value_index: "7.5", closed: true, customer_id: 3},
  {order_description: "Onesie", due_date: "2014-01-11", customer_value_index: "7.0", closed: true, customer_id: 4},
  {order_description: "Onesie", due_date: "2014-02-11", customer_value_index: "6.0", closed: true, customer_id: 5},
  {order_description: "Onesie", due_date: "2014-02-11", customer_value_index: "5.0", closed: true, customer_id: 6},
  {order_description: "Onesie", due_date: "2014-02-11", customer_value_index: "4.0", closed: true, customer_id: 7},
  {order_description: "Onesie", due_date: "2014-03-11", customer_value_index: "3.0", closed: true, customer_id: 8},
  {order_description: "Onesie", due_date: "2014-04-11", customer_value_index: "2.0", closed: true, customer_id: 9},
  {order_description: "Onesie", due_date: "2014-04-11", customer_value_index: "8.0", closed: true, customer_id: 1},
  {order_description: "Onesie", due_date: "2014-05-11", customer_value_index: "6.0", closed: true, customer_id: 5},
  {order_description: "Onesie", due_date: "2014-05-11", customer_value_index: "7.5", closed: true, customer_id: 1},
  {order_description: "Onesie", due_date: "2014-08-18", customer_value_index: "7.5", closed: false, customer_id: 2},
  {order_description: "Onesie", due_date: "2014-08-20", customer_value_index: "6", closed: true, customer_id: 3},
  {order_description: "Onesie", due_date: "2014-08-21", customer_value_index: "6.5", closed: false, customer_id: 4},
  {order_description: "Onesie", due_date: "2014-08-22", customer_value_index: "7.0", closed: false, customer_id: 5}
])
