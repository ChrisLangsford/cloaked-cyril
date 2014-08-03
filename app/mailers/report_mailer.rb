class ReportMailer < ActionMailer::Base
  default from: "ivysdresses85@gmail.com"

  def daily_schedule_email
  	mail(to: "ivysdresses85@gmail.com", subject: "Here's your appointment list for today!")  	
  end

  def weekly_deadlines_email
  	mail(to: "ivysdresses85@gmail.com", subject: "Here's your deadlines for this week!")
  end

  def appointment_notification_email(cusutomer, appointment)
  	@customer =customer
  	@appointment = appointment

  	mail(to: @customer.email, subject: "Appointment Reminder")
  end 
end