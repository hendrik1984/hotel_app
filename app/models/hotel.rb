class Hotel < ApplicationRecord
  # Relationships

  # Validates
  validates :name, presence: true
  validates :address, presence: true
  validates :phone, presence: true
  validates :check_in_time, presence: true
  validates :check_out_time, presence: true

end
