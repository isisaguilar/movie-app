class Actor < ApplicationRecord
  belongs_to :movie
  validates :known_for, presence: true
  validates :last_name, length: { minimum: 2 }
  validates :first_name, length: { minimum: 2 }
  validates :age, numericality: {:only_integer => true, :greater_than => 13 } 
  

end
