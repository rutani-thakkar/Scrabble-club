class GameMember < ApplicationRecord
  belongs_to :game
  belongs_to :member

  scope :win, -> { where(is_winner: true) }
  scope :lose, -> { where(is_winner: false) }
  validate :check_members_length

  def check_members_length
    errors.add("Members can not be added more than 2") if self.game.game_members.count >= 2
  end
end
