class ReportsController < ApplicationController
	helper_method :group_due_dates, :to_month
  def show
  	@periods = group_due_dates  	
  end

  def group_due_dates
    Order.select("to_char(due_date, 'YYYY-MM') as due_date, count(*) as total").group("due_date").order("due_date")
  end

  def to_month(float)
  	@float = float
  	case float
  	when  1.0
  		return "January"
  	
  	when  2.0
  		return "February"
  	
  	when  3.0
  		return "March"
  	
  	when  4.0
  		return "April"
  	
  	when  5.0
  		return "May"
  	
  	when  6.0
  		return "June"
  	
  	when  7.0
  		return "July"
  	
  	when  8.0
  		return "August"
  	
  	when  9.0
  		return "September"
  	
  	when  10.0
  		return "October"
  	
  	when  11.0
  		return "November"
  	
  	when  12.0
  		return "December"
  	end
  end

end