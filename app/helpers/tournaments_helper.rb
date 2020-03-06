module TournamentsHelper
  def tournament_from_teams!(teams)
    teams_and_scores = average_team_scores teams
    teams_and_scores = teams_and_scores.sort_by { |team_score| team_score[0] }

    tournament = Tournament.new(description: "Generated Tournament:  #{Time.now}")

    games_from_team_scores! teams_and_scores, tournament

    tournament.save
  end

  def average_team_scores(teams)
    teams.inject([]) do |memo, team|
      scores = GamesTeam.where(team: team).all.map(&:score).compact
      scores = [1] if scores.blank?

      average_score = scores.inject(0.0) { |score, el| score + el }.to_f / scores.size
      memo << [average_score, team]
    end
  end

  def games_from_team_scores!(teams_and_scores, tournament)
    teams_and_scores.each_slice(2) do |slice|
      game = Game.new(description: "#{slice[0][1].name} vs #{slice[1][1].name}")
      game.teams = [slice[0][1], slice[1][1]]

      game.save

      tournament.games << game
    end
  end
end
