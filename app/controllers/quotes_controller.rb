class QuotesController < ApplicationController	
	before_action :get_order, only: [:index]

  def index
  	@garments = @order.garments
  end

  private
  def get_order
  	@order = Order.find(params[:order_id])
  end

end
