class Report < ActiveRecord::Base

	def send_daily_mail
		ReportMailer.daily_schedule_email.deliver
	end

	def send_weekly_mail
		ReportMailer.weekly_deadlines_email.deliver
	end
end
