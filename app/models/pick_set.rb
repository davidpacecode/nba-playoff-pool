class PickSet < ApplicationRecord
  belongs_to :user
  belongs_to :bracket
  has_many :picks

  after_create :create_picks

  private

    def create_picks
#      { first_round: 4, conference_semifinals: 2, conference_finals: 1 }.each do |round, count|
#        [:eastern, :western].each do |conference|
#          count.times { |slot| series.create!(round: round, conference: conference, status: :scheduled, seed_slot: slot) }
#        end
#      end
#
#      series.create!(round: :nba_finals, conference: :finals, status: :scheduled)
    end
end
