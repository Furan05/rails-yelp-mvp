class Restaurant < ApplicationRecord
  VALID_CATEGORIES = %w[chinese italian japanese french belgian].freeze

  validates :name, presence: true
  validates :address, presence: true
  validates :category, inclusion: { in: VALID_CATEGORIES }
  validates :phone_number, presence: true

  has_many :reviews, dependent: :destroy
end
