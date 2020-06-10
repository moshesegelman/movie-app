class Actor < ApplicationRecord
  validates :first_name, :last_name, presence: true
  validates :first_name, :last_name, length: {minimum: 2}
  validates :known_for, presence: true
  validates :age, presence: true, numericality: {greater_than_or_equal_to: 13}
  belongs_to :movie
end
