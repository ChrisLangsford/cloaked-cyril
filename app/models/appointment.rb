class Appointment < ActiveRecord::Base
  belongs_to :customer

  validates :comments, presence: true

  validates :time,
  			:date, :uniqueness => {:scope => [:date, :time],
  				message: "is already booked"}


end
