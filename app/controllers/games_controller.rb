class GamesController < ApplicationController
  def new
  end

  def edit
    @game = Game.find(params[:id])
    @team1 = @game.teams.first
    @team2 = @game.teams.last

    @score1 = @game.score_for_team @team1
    @score2 = @game.score_for_team @team2

    @played = @game.played?
  end

  def update
    game = Game.find(params[:id])
    game.update(game_params)

    team1 = Team.find(params[:team1])
    team2 = Team.find(params[:team2])
    game.teams = [team1, team2]

    game.update_team_score(team1, params[:score1].to_i) unless params[:score1].blank?
    game.update_team_score(team2, params[:score2].to_i) unless params[:score2].blank?

    redirect_to '/games'
  end

  def create
    game = Game.new(game_params)
    game.teams << Team.find(params.dig(:game, :team1))
    game.teams << Team.find(params.dig(:game, :team2))

    if game.valid?
      game.save
      redirect_to '/games'
    else
      flash[:notice] = []
      game.errors.full_messages.each { |error| flash[:notice] << error }

      redirect_to '/games/new'
    end
  end

  def delete
    Game.find_by_id(params[:id]).delete

    redirect_to '/games'
  end

  def index
    @games = Game.paginate(page: params[:page] || 1, per_page: params[:per_page] || 5)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @games.map(&:attributes) }
    end
  end

  def show
    @game = Game.find(params[:id])

    respond_to do |format|
      format.html # edit.html.erb
      format.json { render json: @game.attributes }
    end
  end

  private

  def game_params
    params.require(:game).permit(:description, :played)
  end
end