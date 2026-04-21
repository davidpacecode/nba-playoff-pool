class PickSet < ApplicationRecord
  belongs_to :user
  belongs_to :bracket
  has_many :picks
end
