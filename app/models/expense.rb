class Expense < ActiveRecord::Base

	validates :habby,
		  	  :bank_charge,
		  	  :equipment,
		  	  :stationery,
		  	  :computer,
		  	  :telephone,
		  	  :misc_expense, numericality: true
end
