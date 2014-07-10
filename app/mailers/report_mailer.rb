class ReportMailer < ActionMailer::Base
  default from: "langz020@gmail.com"

  def daily_schedule_email
  	mail(to: "langz020@gmail.com", subject: "Here's your appointment list for today!")  	
  end

  def weekly_deadlines_email
  	mail(to: "langz020@gmail.com", subject: "Here's your deadlines for this week!")
  end 
end