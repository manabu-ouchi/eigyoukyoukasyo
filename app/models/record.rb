class Record < ApplicationRecord
  validates :mendan, presence: true
  validates :fulltalk, presence: true
  validates :mikomi, presence: true
  validates :mikomiorder, presence: true
  validates :order, presence: true
  validates :payment, presence: true
 

  validates :mendan, :fulltalk, :mikomi, :mikomiorder, :order, :payment, numericality: { only_integer: true }

  belongs_to :user
  
end
