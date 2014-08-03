class QuoteMailer < ActionMailer::Base
  default from: "ivysdresses85@gmail.com"

  def quote_email(customer, order, url)
  	@customer = customer
  	@order = order
  	@url =  url

  	mail(to: @customer.email, subject: "Quote from Ivy's Dresses")
  end
end
