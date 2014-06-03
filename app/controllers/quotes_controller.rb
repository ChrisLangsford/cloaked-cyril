class QuotesController < ApplicationController
	layout "layouts/_blank"
	before_action :set_order, only: [:show]
	def show

		@Customer = Customer.find(@order.customer_id)
	end

	private

	def set_order
	@order =Order.find(1)	
	end
end
