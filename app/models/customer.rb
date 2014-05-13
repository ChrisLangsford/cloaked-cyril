class Customer < ActiveRecord::Base
	has_many :appointments
	has_many :orders
end
