class Movie < ApplicationRecord
  validates :title, length: {in: 1..100}
  validates :plot, length: {minimum: 200}
  validates :director, presence: true
  has_many :actors
end
