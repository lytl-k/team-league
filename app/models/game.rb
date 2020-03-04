class Game < ApplicationRecord
  has_many :games_tournaments
  has_many :tournaments, through: :games_tournaments
  has_many :games_teams
  has_many :teams, through: :games_teams

  validates :description, presence: true
end
