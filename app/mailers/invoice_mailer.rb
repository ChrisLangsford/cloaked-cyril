class InvoiceMailer < ActionMailer::Base
  default from: "ivysdresses85@gmail.com"

  def invoice_email(customer, order, url)
  	@customer = customer
  	@order = order
  	@url =  url

  	mail(to: @customer.email, subject: "Your invoice from Ivy's Dresses")
  end
end
