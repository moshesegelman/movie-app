class Movie < ApplicationRecord
  validates :title, length: {in: 1..100}
  validates :plot, length: {minimum: 200}
  validates :director, presence: true
  has_many :actors
  has_many :movie_genres
  has_many :genres, through: :movie_genres

  def genre_names
    genres.map do {|genre| genre.name}
  end
end
