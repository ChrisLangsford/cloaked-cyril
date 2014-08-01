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
    #@garment_categories = get_garments_per_year(@year_selected)

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
      balloonText: "[[value]] [[garment_type]] have been produced"
    }}
  end
    
  end

  def get_garments_per_year(year)
    @year = year
    order_garments = Order.joins(:garments).where("to_char(due_date, 'YYYY') = ?", @year.to_s)
    order_garments.select("garment_type, count(*)as total, to_char(due_date, 'YYYY')as order_year").group("garment_type", "order_year")        
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