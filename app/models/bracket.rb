class Bracket < ApplicationRecord
  has_many :pick_sets
  has_many :series

  after_create :create_series

  private

    def create_series
      { first_round: 4, conference_semifinals: 2, conference_finals: 1 }.each do |round, count|
        [:eastern, :western].each do |conference|
          count.times { series.create!(round: round, conference: conference, status: :scheduled) }
        end
      end

      series.create!(round: :nba_finals, conference: :finals, status: :scheduled)
    end
end
