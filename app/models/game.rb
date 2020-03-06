class Game < ApplicationRecord
  has_many :games_tournaments
  has_many :tournaments, through: :games_tournaments
  has_many :games_teams
  has_many :teams, through: :games_teams

  validates :description, presence: true

  def score_for_team(team)
    games_teams.where(team: team).first&.score
  end

  def update_team_score(team, score)
    games_teams.where(team: team).update(score: score)
  end

  def played?
    played
  end
end
