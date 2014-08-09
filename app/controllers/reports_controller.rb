class ReportsController < ApplicationController
	helper_method :group_due_dates, :calculate_objective_index 

  add_breadcrumb "Home", :root_path
  def index

    add_breadcrumb "Reports", reports_index_path  
  end

  def dailySchedule

    add_breadcrumb "Reports", reports_index_path
    add_breadcrumb "Daily Schedule", reports_dailySchedule_path
    
  end

  def weeklyDeadline

    add_breadcrumb "Reports", reports_index_path
    add_breadcrumb "Weekly Deadlines", reports_weeklyDeadline_path
    
  end

  def customerRanking

    customers = Customer.all
    cvi_average_per_customer = Order.select("customer_id, avg(customer_value_index) as subj", :limit => 5).group("customer_id").order("subj").reverse

    all_customers_with_scores = []

    customers.each do |c|
      customer_with_scores = Hash.new
      customer_value_scores = []

      c.orders.each do|o|
        customer_value_scores.push(o.customer_value_index)
      end

      individual_score = customer_value_scores.inject{ |sum, el| sum + el }.to_f / customer_value_scores.size
      customer_with_scores["name"] = c.first_name + " " + c.last_name
      customer_with_scores["sub_score"] = individual_score
      customer_with_scores["obj_score"] = calculate_objective_index(c)

      all_customers_with_scores.push(customer_with_scores)
    end


    @top5 = all_customers_with_scores.sort_by { |hsh| hsh[:sub_score]}[0..4]
    @bottom5 = all_customers_with_scores.sort_by { |hsh| hsh[:sub_score]}.reverse[0..4]


    add_breadcrumb "Reports", reports_index_path
    add_breadcrumb "Customer Ranking", reports_customerRanking_path
    
  end

  def expense
    @expense = Expense.select("period_end_date, sum(habby) as habby, sum(bank_charge) as bank, sum(equipment) as equip, sum(stationery) as stat, sum(computer) as comp, sum(telephone) as tel, sum(misc_expense) as misc").group("period_end_date").limit(4)

    add_breadcrumb "Reports", reports_index_path
    add_breadcrumb "Expenses", reports_expense_path
    
  end

  def busySeason
    @periods = group_due_dates

    add_breadcrumb "Reports", reports_index_path
    add_breadcrumb "Busy Season", reports_busySeason_path
    
  end

  def garmentPopularity
    #year_selected = Time.now.year    
    @garment_categories = get_garments_per_year(2014)
    @total_per_type = total_per_garment_type(2014)

    order_garments = Order.joins(:garments)   
    @garments_per_order = order_garments.select("to_char(due_date, 'YYYY') as order_year, count(*) as count").group("order_year").limit(4)
    @year_list = get_list_of_year_values
    

    add_breadcrumb "Reports", reports_index_path
    add_breadcrumb "Garment Type Popularity", reports_garmentPopularity_path    
  end

  def ajax_renderChart
  year_selected = params["year_selected"]    
  @garment_categories = get_garments_per_year(year_selected) 

  respond_to do |format|
    format.html {redirect_to reports_index_path}
    format.json {render :json => {
      type: "pie",
      dataProvider: @garment_categories,
      titleField: "garment_type",
      valueField: "total",
      balloonText: "<strong>[[value]]</strong> [[garment_type]] have been produced",
      legend: {
        align: "centre",
        markerType: "circle"
      }
    }}
  end

  end
  def ajax_profit_per_garment_type
    year_selected = params["year_selected"]
    @profit_per_category = total_per_garment_type(year_selected)

    respond_to do |format|
      format.json {render :json => {
      type: "radar",
      dataProvider: @profit_per_category,
      categoryField: "type",
      startDuration: 1,
      valueAxes: [{
        axisAlpha: 0.15,
        minimum: 0,
        dashLength: 3,
        axisTitleOffset: 20,
        gridCount: 5
        }],

      graphs: [{
        title: "Total income per garment type for #{year_selected}",
        valueField: "income",
        bullet: "round",
        lineColor: "#fb5000",
        fillAlphas: 0.3,
        balloonText: "<strong>R[[value]]</strong> [[type]]"
        },{
        title: "Average income per garment type for #{year_selected}",
        valueField: "average",
        bullet: "round",
        lineColor: "#5fb503",
        fillAlphas: 0.3,
        balloonText: "<strong>R[[value]]</strong> / [[type]] garment"
        }],
        legend: [{
          position: "right",
          borderAlpha: 0.3,
          horizontalGap: 10,
          switchType: "v"
          }]         
      }}
    end    
  end
    

  def get_garments_per_year(year)
    @year = year
    order_garments = Order.joins(:garments).where("to_char(due_date, 'YYYY') = ?", @year.to_s)
    order_garments.select("garment_type, count(*)as total, to_char(due_date, 'YYYY')as order_year").group("garment_type", "order_year")        
  end 

  def total_per_garment_type(year)
    @year = year
    order_garments = Order.joins(:garments).where("to_char(due_date, 'YYYY') = ?", @year.to_s)
    types = ["Wedding Dress", "Matric Farewell", "Formal wear", "Work wear", "Alterations", "Other"]
    type_revenues =[]

    for i in 0..5    
      og = order_garments.where("garment_type = ?", types[i]).uniq
      type_total = 0
      if og.present?
        og.each do |o|
          order_total = []
          o.garments.each do |g|
            r = g.costings.last
            value = 0
            if r.present?
            value = r.labour_cost +
                r.fabric_cost +
                r.acc_cost +
                r.misc_cost
            end
            order_total.push(value)
          end
          type_total += order_total.reduce(:+)
        end
      end        
        type_revenues.push(type_total.to_s)
    end  

    count_per_type = get_garments_per_year(@year)
    counts = []

    count_per_type.each do |h|
      case h.garment_type
      when "Wedding Dress"
        counts[0] = h.total

      when "Matric Farewell"
        counts[1] = h.total

      when "Formal wear"
        counts[2] = h.total

      when "Work wear"
        counts[3] = h.total

      when "Alterations"
        counts[4] = h.total

      when "Other"
        counts[5] = h.total
      end
    end

    averages = []
    for k in 0..5
      if counts[k].present?
        averages[k] = (type_revenues[k].to_f / counts[k].to_f)
      end
    end

    
    
    r = []
    for j in 0..5
      p = Hash.new
      p["type"] = types[j]
      p["income"] = type_revenues[j]
      p["average"] = averages[j]

      if type_revenues[j] != "0"
      r.push(p)        
      end
    end
    r 
  end 

  def group_due_dates
    Order.select("to_char(due_date, 'YYYY-MM') as per_month, count(*) as total").group("per_month").order("per_month")
  end

  def get_list_of_year_values
    year_list = []
    Order.all.each do |o|
      year_list.push(o.due_date.year)
    end
    return year_list.uniq
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

end#end of controller
