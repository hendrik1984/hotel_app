class Hotel < ApplicationRecord
  # Relationships

  # Validates
  validates :name, presence: true
  validates :address, presence: true
  validates :phone, presence: true
  validates :check_in_time, presence: true
  validates :check_out_time, presence: true
  validates :stars, numericality: {greater_than_or_equal_to: 1, less_than_or_equal_to: 5}
end
