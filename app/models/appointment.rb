class Appointment < ActiveRecord::Base
  belongs_to :customer

  validates :comments, presence: true
end
