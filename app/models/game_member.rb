class GameMember < ApplicationRecord
  belongs_to :game
  belongs_to :member

  scope :win, -> { where(is_winner: true) }
  scope :lose, -> { where(is_winner: false) }
end
