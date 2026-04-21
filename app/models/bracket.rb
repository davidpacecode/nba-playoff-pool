class Bracket < ApplicationRecord
  has_many :pick_sets
  has_many :series
end
