class QuotesController < ApplicationController
	layout "corres"	
	before_action :get_order, only: [:show, :calculate_total]
  helper_method :calculate_total

  def show
  	@customer = Customer.find(@order.customer_id)
  	@garments = @order.garments
    if params[:client] != @customer.first_name && !@order.closed? 
      QuoteMailer.quote_email(@customer, @order, order_quote_url(@order, "1", {client: @customer.first_name})).deliver    
    end
  end

  def calculate_total
    total = 0
    sub_totals =[]

    @order.garments.each do |g|
       recent = g.costings.last
       value=recent.labour_cost + recent.fabric_cost + recent.acc_cost + recent.misc_cost
       sub_totals.push(value)
    end
    return total = sub_totals.reduce(:+)    
  end

  private
  def get_order
  	@order = Order.find(params[:order_id])
  end

end
