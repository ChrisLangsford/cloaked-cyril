class QuotesController < ApplicationController
	layout "corres"	
	before_action :get_order, only: [:index]

  def index
  	@customer = Customer.find(@order.customer_id)
  	@garments = @order.garments
    QuoteMailer.quote_email(@customer, @order).deliver    
  end

  private
  def get_order
  	@order = Order.find(params[:order_id])
  end

end
