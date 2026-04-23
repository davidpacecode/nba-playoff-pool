class Series < ApplicationRecord

  SEED_SLOT_SEEDS = {
    0 => [1, 8],
    1 => [4, 5],
    2 => [3, 6],
    3 => [2, 7]
  }.freeze

  belongs_to :top_seed, class_name: "Team", optional: true
  belongs_to :bottom_seed, class_name: "Team", optional: true
  belongs_to :winner, class_name: "Team", optional: true
  belongs_to :bracket

  enum :round, { first_round: 0, conference_semifinals: 1, conference_finals: 2, nba_finals: 3 }
  enum :conference, { eastern: 0, western: 1, finals: 2 }
  enum :status, { scheduled: 0, in_progress: 1, complete: 2 }

  def display_name
    "#{round.titleize} - #{conference.titleize} - #{top_seed.name} vs #{bottom_seed.name}"
  end

  def seeds
    SEED_SLOT_SEEDS[seed_slot]
  end
end
