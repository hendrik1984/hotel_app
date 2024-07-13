class Role < ApplicationRecord
  # Relationship
  has_many :user_roles
  has_many :users, through: :user_roles
  
  # Validates
  validates :name, presence: true

  # kaminari
  paginates_per 10
end
