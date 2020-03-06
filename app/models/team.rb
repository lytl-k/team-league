class Team < ApplicationRecord
  has_many :games_teams
  has_many :games, through: :games_teams
  has_many :teams_users
  has_many :users, through: :teams_users

  validates :name, presence: true

  def coordinator
    User.find(coordinator_id) if coordinator_id
  end
end
