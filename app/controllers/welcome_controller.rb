class WelcomeController < ApplicationController
	helper_method :calculate_objective_index
  def index
  end

  def calculate_objective_index(customer)  	
  	@customer = customer

  	appointments = @customer.appointments.count
  	orders = @customer.orders.count

  	appointments_per_order = appointments/orders

  	costings_per_order = []
  	@customer.orders.each do |o|
  		number_of_costings = []

  		o.garments.each do |g|
  			number_of_costings.push(g.costings.count)
  		end

  		costings_per_order.push(number_of_costings.inject(0.0) { |sum, el| sum + el } / number_of_costings.size)
  	end

  	average_costings_per_order = (costings_per_order.inject(0.0) { |sum, el| sum + el } / costings_per_order.size)

  	return objective_index = (10 - average_costings_per_order) - (appointments_per_order)/1

  end
end
