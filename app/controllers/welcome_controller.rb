class WelcomeController < ApplicationController
	helper_method :calculate_objective_index
  http_basic_authenticate_with name: "ivysdresses", password: "poisoni"

  add_breadcrumb "Home", :root_path
  def index  
  #ReportMailer.daily_schedule_email.deliver
  #ReportMailer.weekly_deadlines_email.deliver

  #customer ranking code
  customers = Customer.all
    cvi_average_per_customer = Order.select("customer_id, avg(customer_value_index) as subj", :limit => 5).group("customer_id").order("subj").reverse

    all_customers_with_scores = []

    customers.each do |c|
      customer_with_scores = Hash.new
      customer_value_scores = []

      if c.orders.where('closed = true').count == 0
      customer_value_scores.push(0)
      end

      c.orders.each do|o|
        if o.closed
        customer_value_scores.push(o.customer_value_index)
      end
      end

      individual_score = customer_value_scores.inject{ |sum, el| sum + el }.to_f / customer_value_scores.size
      customer_with_scores["name"] = c.first_name + " " + c.last_name
      customer_with_scores["sub_score"] = individual_score
      customer_with_scores["obj_score"] = calculate_objective_index(c)

      if individual_score != 0
      all_customers_with_scores.push(customer_with_scores)
      end
      all_customers_with_scores.sort_by! {|hash| hash["sub_score"]}
    end


    @top5 = all_customers_with_scores.reverse[0..4]
    @bottom5 = all_customers_with_scores[0..4]
    @full = all_customers_with_scores.reverse
    #end customer ranking code
  end

  def calculate_objective_index(customer)   
    @customer = customer

    appointments = @customer.appointments.count
    orders = @customer.orders.count

    if (orders != 0 && appointments != 0)

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
    end#end of if
    else
      return objective_index = 0
    end
end
