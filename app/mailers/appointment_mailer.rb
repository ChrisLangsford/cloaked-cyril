class AppointmentMailer < ActionMailer::Base
  default from: "langz020@gmil.com"

  def new_appointment_email(customer, appointment)
  	@customer = customer
  	@appointment = appointment
  	mail(to: @customer.email, subject: "Appointment made with Ivy's Dresses")
  end
end
