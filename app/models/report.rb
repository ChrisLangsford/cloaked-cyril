class Report < ActiveRecord::Base

	def send_daily_mail
		ReportMailer.daily_schedule_email.deliver
	end

	def send_weekly_mail
		ReportMailer.weekly_deadlines_email.deliver
	end

	def appointment_notifications
		d = Date.today

		@appointments = Appointment.where(date: d+1)

		@appointments.each do |a|
			@customer = Customer.find(a.customer_id)
			ReportMailer.appointment_notification_email(@customer, a).deliver
		end		
	end
end
