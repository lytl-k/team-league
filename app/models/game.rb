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

  def team1
    teams.first
  end

  def team2
    teams.last
  end

  def score1
    score_for_team team1
  end

  def score2
    score_for_team team2
  end

  def winner
    return nil unless score1 and score2
    return 'Draw' if score1 == score2
    score1 > score2 ? team1.name : team2.name
  end
end
