class Team < ApplicationRecord
  has_one_attached :logo

  enum :conference, { eastern: 0, western: 1 }
end
