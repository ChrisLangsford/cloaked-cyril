class InvoiceMailer < ActionMailer::Base
  default from: "langz020@gmail.com"

  def invoice_email(customer, order)
  	@customer = customer
  	@order = order
  	@url =  order_quotes_path(@order)

  	mail(to: @customer.email, subject: "Invoice from Ivy's Dresses")
  end
end
