class Movie < ApplicationRecord
  has_many :actors
  validates :title, presence: true
  validates :title, length: {minimum: 2 }
  validates :year, numericality: {:only_integer => true}
  validates :plot, presence: true, length:{minimum: 50}
  has_many :movie_genres
  has_many :genres, through: :movie_genres
end
