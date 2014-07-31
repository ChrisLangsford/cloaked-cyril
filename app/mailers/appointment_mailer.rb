class AppointmentMailer < ActionMailer::Base
  default from: "langz020@gmil.com"

  def new_appointment_email(customer, appointment)
  	@customer = customer
  	@appointment = appointment

    #create .cs file
    d = @appointment.date
    t = @appointment.time
    dt = DateTime.new(d.year, d.month, d.day, t.hour, t.min)
    event = RiCal.Event do
      description @appointment.comments
      dtstart     dt
      dtend       dt = 1.hours
      #location    "Cape Canaveral"
      add_attendee @customer.email      
    end

    attachments['event.ics'] = event.export()
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
