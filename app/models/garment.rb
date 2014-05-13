class Garment < ActiveRecord::Base
  belongs_to :order
  has_many :costings
end
