class Order < ActiveRecord::Base
  belongs_to :customer
  has_many :garments
  has_many :quotes

  validates :order_description, presence: true
  validates :customer_value_index, numericality: true, allow_nil: true,
  			inclusion: {in: 0..10,
  			message: "must be an integer between 0-10"}
end
