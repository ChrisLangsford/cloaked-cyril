class ReportsController < ApplicationController
	helper_method :group_due_dates, :calculate_objective_index 

  add_breadcrumb "Home", :root_path
  def show
  	@periods = group_due_dates
    @expense = Expense.select("period_end_date, sum(habby) as habby, sum(bank_charge) as bank, sum(equipment) as equip, sum(stationery) as stat, sum(computer) as comp, sum(telephone) as tel, sum(misc_expense) as misc").group("period_end_date").limit(4)
  

    add_breadcrumb "Reports", reports_show_path	
  end

  def group_due_dates
    Order.select("to_char(due_date, 'YYYY-MM') as per_month, count(*) as total").group("per_month").order("per_month")
  end
  
def calculate_objective_index(customer)   
    @customer = customer

    appointments = @customer.appointments.count
    orders = @customer.orders.count

    appointments_per_order = appointments/orders

    costings_per_order = []
    @customer.orders.each do |o|
      if o.closed == true
      
        number_of_costings = []

        o.garments.each do |g|
          number_of_costings.push(g.costings.count)
        end
      else
        number_of_costings =[0]
      end

      costings_per_order.push(number_of_costings.inject(0.0) { |sum, el| sum + el } / number_of_costings.size)
    end

    average_costings_per_order = (costings_per_order.inject(0.0) { |sum, el| sum + el } / costings_per_order.size)

    return objective_index = (10 - average_costings_per_order) - (appointments_per_order)/1.75

  end

end