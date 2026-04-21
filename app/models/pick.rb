class Pick < ApplicationRecord
  belongs_to :series
  belongs_to :predicted_winner
end
