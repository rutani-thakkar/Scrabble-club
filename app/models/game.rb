class Game < ApplicationRecord
  has_many :game_members, dependent: :destroy
  has_many :members, through: :game_members, dependent: :destroy

  validates :place, :event_date, presence: true
end
