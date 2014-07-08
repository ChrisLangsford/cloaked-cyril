class AppointmentMailer < ActionMailer::Base
  default from: "langz020@gmil.com"

  def new_appointment_email(customer, appointment)
  	@customer = customer
  	@appointment = appointment
  	mail(to: @customer.email, subject: "Appointment made with Ivy's Dresses")
  end

  def cancel_appointment_email(customer, appointment)
  	@customer = customer
  	@appointment = appointment
  	mail(to: @customer.email, subject: "Ivy's Dresses appointment cancelled")
  end

  def update_appointment_email(customer,appointment)
  	@customer = customer
  	@appointment = appointment
  	mail(to: @customer.email, subject: "Your appointment with Ivy's Dresses has been changed")
  end
end
