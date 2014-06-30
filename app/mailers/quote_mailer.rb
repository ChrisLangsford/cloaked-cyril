class QuoteMailer < ActionMailer::Base
  default from: "langz020@gmail.com"

  def quote_email(customer, order)
  	@customer = customer
  	@order = order
  	@url =  order_quotes_path(@order)

  	mail(to: @customer.email, subject: "Quote from Ivy's Dresses")
  end
end
