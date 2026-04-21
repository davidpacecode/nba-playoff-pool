class Series < ApplicationRecord

  belongs_to :top_seed, class_name: "Team"
  belongs_to :bottom_seed, class_name: "Team"
  belongs_to :winner, class_name: "Team", optional: true
  belongs_to :bracket

  enum :round, { first_round: 0, conference_semifinals: 1, conference_finals: 2, nba_finals: 3 }
  enum :conference, { eastern: 0, western: 1, finals: 2 }
  enum :status, { scheduled: 0, in_progress: 1, complete: 2 }

  def display_name
    "#{round.titleize} - #{conference.titleize} - #{top_seed.name} vs #{bottom_seed.name}"
  end
end
