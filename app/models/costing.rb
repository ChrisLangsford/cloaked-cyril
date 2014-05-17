class Costing < ActiveRecord::Base
  belongs_to :garment

  	validates :labour_cost,
  			  :fabric_cost,
  			  :acc_cost,
  			  :misc_cost, numericality: true
end
