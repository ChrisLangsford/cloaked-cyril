class Customer < ActiveRecord::Base
	has_many :appointments
	has_many :orders

	validates :first_name,
			  :last_name,
			  :email,
			  :contact_no, presence: true

end
