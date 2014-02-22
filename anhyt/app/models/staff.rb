class Staff < ActiveRecord::Base
  validates :name,presence: true,uniqueness: true
  validates :sex,:address,presence: true
  validates :age,numericality: true
  validates :phone,numericality: true,length: {maximum: 11}
end
