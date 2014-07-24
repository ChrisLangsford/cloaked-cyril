class WelcomeController < ApplicationController
	helper_method :calculate_objective_index
  http_basic_authenticate_with name: "i", password: "l"

  add_breadcrumb "Home", :root_path
  def index  
  #ReportMailer.daily_schedule_email.deliver
  #ReportMailer.weekly_deadlines_email.deliver
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
