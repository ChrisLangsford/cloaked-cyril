class Order < ActiveRecord::Base
  belongs_to :customer
  has_many :garments

  validates :order_description, presence: true
end
