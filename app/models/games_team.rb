class GamesTeam < ApplicationRecord
  belongs_to :game
  belongs_to :team

  def update(values)
    p 'THIS IS HAPPENING'
    p values
    super(values)
  end
end
