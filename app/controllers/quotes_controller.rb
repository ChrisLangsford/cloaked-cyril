class QuotesController < ApplicationController
	layout "corres"	
	before_action :get_order, only: [:show]

  def show
  	@customer = Customer.find(@order.customer_id)
  	@garments = @order.garments
    if params[:client] != @customer.first_name
      QuoteMailer.quote_email(@customer, @order, order_quote_url(@order, "1", {client: @customer.first_name})).deliver    
    end
  end

  private
  def get_order
  	@order = Order.find(params[:order_id])
  end

end
