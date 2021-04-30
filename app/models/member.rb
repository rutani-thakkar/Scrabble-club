class Member < ApplicationRecord
  has_many :game_members, dependent: :destroy
  has_many :games, through: :game_members, dependent: :destroy

  validates :email, presence: true
  validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }
  validates :email, uniqueness: true

  after_create :add_joining_date

  def add_joining_date
    self.update(joining_date: Date.today)
  end
end
