class InvoiceMailer < ActionMailer::Base
  default from: "langz020@gmail.com"

  def invoice_email(customer, order, url)
  	@customer = customer
  	@order = order
  	@url =  url

  	mail(to: @customer.email, subject: "Invoice from Ivy's Dresses")
  end
end
