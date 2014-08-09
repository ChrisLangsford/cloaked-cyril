class AppointmentMailer < ActionMailer::Base
  default from: "ivysdresses85@gmail.com"

  def new_appointment_email(customer, appointment)
  	@customer = customer
  	@appointment = appointment

    #create .cs file
    d = @appointment.date
    t = @appointment.time
    dt = DateTime.new(d.year, d.month, d.day, t.hour, t.min)
    edt = dt+1.hours
    event = RiCal.Event do |e|
      e.description "#{@appointment.comments}"
      e.dtstart     dt.strftime("%Y%m%dT%H%M%S")
      e.dtend       edt.strftime("%Y%m%dT%H%M%S")
      e.location    ""
      e.add_attendee @customer.email      
    end

    attachments['event.ics'] = event.export()
  	mail(to: @customer.email, subject: "You have a new appointment with Ivy's Dresses")
  end

  def cancel_appointment_email(customer, appointment)
  	@customer = customer
  	@appointment = appointment
  	mail(to: @customer.email, subject: "Your appointment with Ivy's Dresses has been cancelled")
  end

  def update_appointment_email(customer,appointment)
  	@customer = customer
  	@appointment = appointment
  	mail(to: @customer.email, subject: "Your appointment with Ivy's Dresses has been changed")
  end
end
