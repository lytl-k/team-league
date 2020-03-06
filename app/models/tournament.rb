class Tournament < ApplicationRecord
  has_many :games_tournaments
  has_many :games, through: :games_tournaments

  validates :description, presence: true

  def started?
    started
  end
end
