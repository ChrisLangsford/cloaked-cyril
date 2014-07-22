class EmailValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    unless value =~ /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
      record.errors[attribute] << (options[:message] || "is not a valid email address")
    end
  end
end
class Customer < ActiveRecord::Base
	has_many :appointments
	has_many :orders

	validates :first_name,
			  :last_name,
			  :contact_no, presence: true

	validates :email, presence: true, email: true

	validates :first_name, :uniqueness => {scope: :last_name,
	message: " last name combination has already been taken"}
end




