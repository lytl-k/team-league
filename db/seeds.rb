# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

epic_user = User.where(email: 'epic_user@team.com').first_or_create(name: 'Kobus', surname: 'Kemp', password: 'WhatFace', email: 'epic_user@team.com')
user1 = User.where(email: 'user1@team.com').first_or_create(name: 'Piet', surname: 'Pompies', password: 'WhatFace', email: 'user1@team.com')
user2 = User.where(email: 'user2@team.com').first_or_create(name: 'Jannie', surname: 'Boer', password: 'WhatFace', email: 'user2@team.com')
user3 = User.where(email: 'user3@team.com').first_or_create(name: 'Sannie', surname: 'Boer', password: 'WhatFace', email: 'user3@team.com')
user4 = User.where(email: 'user4@team.com').first_or_create(name: 'Bokkie', surname: 'Lion', password: 'WhatFace', email: 'user4@team.com')
user21 = User.where(email: 'user21@team.com').first_or_create(name: 'Tannie', surname: 'Vroumens', password: 'WhatFace', email: 'user21@team.com')
user22 = User.where(email: 'user22@team.com').first_or_create(name: 'Johan', surname: 'Vermeulen', password: 'WhatFace', email: 'user22@team.com')
user23 = User.where(email: 'user23@team.com').first_or_create(name: 'Lisa', surname: 'Dubison', password: 'WhatFace', email: 'user23@team.com')
user24 = User.where(email: 'user24@team.com').first_or_create(name: 'Niel', surname: 'Kemp', password: 'WhatFace', email: 'user24@team.com')
user31 = User.where(email: 'user31@team.com').first_or_create(name: 'Jack', surname: 'Ripper', password: 'WhatFace', email: 'user31@team.com')
user32 = User.where(email: 'user32@team.com').first_or_create(name: 'Sonny', surname: 'Moon', password: 'WhatFace', email: 'user32@team.com')
user33 = User.where(email: 'user33@team.com').first_or_create(name: 'Franky', surname: 'Vermillion', password: 'WhatFace', email: 'user33@team.com')
user34 = User.where(email: 'user34@team.com').first_or_create(name: 'Johnny', surname: 'Blue', password: 'WhatFace', email: 'user34@team.com')
user41 = User.where(email: 'user41@team.com').first_or_create(name: 'Anne', surname: 'Frank', password: 'WhatFace', email: 'user41@team.com')
user42 = User.where(email: 'user42@team.com').first_or_create(name: 'Julia', surname: 'Baxter', password: 'WhatFace', email: 'user42@team.com')
user43 = User.where(email: 'user43@team.com').first_or_create(name: 'Alexander', surname: 'Person', password: 'WhatFace', email: 'user43@team.com')
user44 = User.where(email: 'user44@team.com').first_or_create(name: 'Jouma', surname: 'Isweird', password: 'WhatFace', email: 'user44@team.com')

league_master = Role.where(name: 'league_master').first_or_create(name: 'league_master')
player = Role.where(name: 'player').first_or_create(name: 'player')
coordinator = Role.where(name: 'coordinator').first_or_create(name: 'coordinator')

RolesUser.where(user: user1).first_or_create(user: user1, role: player)
RolesUser.where(user: user2).first_or_create(user: user2, role: player)
RolesUser.where(user: user3).first_or_create(user: user3, role: player)
RolesUser.where(user: user4).first_or_create(user: user4, role: player)
RolesUser.where(user: user21).first_or_create(user: user21, role: player)
RolesUser.where(user: user22).first_or_create(user: user22, role: player)
RolesUser.where(user: user23).first_or_create(user: user23, role: player)
RolesUser.where(user: user24).first_or_create(user: user24, role: player)
RolesUser.where(user: user31).first_or_create(user: user31, role: player)
RolesUser.where(user: user32).first_or_create(user: user32, role: player)
RolesUser.where(user: user33).first_or_create(user: user33, role: player)
RolesUser.where(user: user34).first_or_create(user: user34, role: player)
RolesUser.where(user: user41).first_or_create(user: user41, role: player)
RolesUser.where(user: user42).first_or_create(user: user42, role: player)
RolesUser.where(user: user43).first_or_create(user: user43, role: player)
RolesUser.where(user: user44).first_or_create(user: user44, role: player)
RolesUser.where(user: epic_user).first_or_create(user: epic_user, role: league_master)

team1 = Team.where(name: 'The first').first_or_create(name: 'The first', coordinator_id: user1.id)
team2 = Team.where(name: 'The second').first_or_create(name: 'The second', coordinator_id: user21.id)
team3 = Team.where(name: 'The third').first_or_create(name: 'The third', coordinator_id: user31.id)
team4 = Team.where(name: 'The fourth').first_or_create(name: 'The fourth', coordinator_id: user41.id)

game1 = Game.where(description: 'The first game...').first_or_create(description: 'The first game...')
game2 = Game.where(description: 'The second game...').first_or_create(description: 'The second game...')
game3 = Game.where(description: 'The third game...').first_or_create(description: 'The third game...')
game4 = Game.where(description: 'The fourth game...').first_or_create(description: 'The fourth game...')
game5 = Game.where(description: 'The fifth game...').first_or_create(description: 'The fifth game...')
game6 = Game.where(description: 'The sixth game...').first_or_create(description: 'The sixth game...')
game7 = Game.where(description: 'The seventh game...').first_or_create(description: 'The seventh game...')
game8 = Game.where(description: 'The eighth game...').first_or_create(description: 'The eighth game...')
game9 = Game.where(description: 'The ninth game...').first_or_create(description: 'The ninth game...')
game10 = Game.where(description: 'The tenth game...').first_or_create(description: 'The tenth game...')

tournament = Tournament.where(description: 'The first tournament...').first_or_create(description: 'The first tournament...')

team1_user1 = TeamsUser.where(team: team1, user: user1).first_or_create(team: team1, user: user1)
team1_user2 = TeamsUser.where(team: team1, user: user2).first_or_create(team: team1, user: user2)
team1_user3 = TeamsUser.where(team: team1, user: user3).first_or_create(team: team1, user: user3)
team1_user4 = TeamsUser.where(team: team1, user: user4).first_or_create(team: team1, user: user4)
team2_user1 = TeamsUser.where(team: team2, user: user1).first_or_create(team: team2, user: user21)
team2_user2 = TeamsUser.where(team: team2, user: user2).first_or_create(team: team2, user: user22)
team2_user3 = TeamsUser.where(team: team2, user: user3).first_or_create(team: team2, user: user23)
team2_user4 = TeamsUser.where(team: team2, user: user4).first_or_create(team: team2, user: user24)
team3_user1 = TeamsUser.where(team: team3, user: user1).first_or_create(team: team3, user: user31)
team3_user2 = TeamsUser.where(team: team3, user: user2).first_or_create(team: team3, user: user32)
team3_user3 = TeamsUser.where(team: team3, user: user3).first_or_create(team: team3, user: user33)
team3_user4 = TeamsUser.where(team: team3, user: user4).first_or_create(team: team3, user: user34)
team4_user1 = TeamsUser.where(team: team4, user: user1).first_or_create(team: team4, user: user41)
team4_user2 = TeamsUser.where(team: team4, user: user2).first_or_create(team: team4, user: user42)
team4_user3 = TeamsUser.where(team: team4, user: user3).first_or_create(team: team4, user: user43)
team4_user4 = TeamsUser.where(team: team4, user: user4).first_or_create(team: team4, user: user44)

game1_team1 = GamesTeam.where(team: team1, game: game1).first_or_create(team: team1, game: game1, score: 50)
game1_team2 = GamesTeam.where(team: team2, game: game1).first_or_create(team: team2, game: game1, score: 50)
game2_team3 = GamesTeam.where(team: team3, game: game2).first_or_create(team: team3, game: game2, score: 50)
game2_team4 = GamesTeam.where(team: team4, game: game2).first_or_create(team: team4, game: game2, score: 50)
game3_team1 = GamesTeam.where(team: team1, game: game3).first_or_create(team: team1, game: game3, score: 50)
game3_team3 = GamesTeam.where(team: team3, game: game3).first_or_create(team: team3, game: game3, score: 50)
game4_team2 = GamesTeam.where(team: team2, game: game4).first_or_create(team: team2, game: game4, score: 50)
game4_team4 = GamesTeam.where(team: team4, game: game4).first_or_create(team: team4, game: game4, score: 50)
game5_team1 = GamesTeam.where(team: team1, game: game5).first_or_create(team: team1, game: game5, score: 50)
game5_team4 = GamesTeam.where(team: team4, game: game5).first_or_create(team: team4, game: game5, score: 50)
game6_team2 = GamesTeam.where(team: team2, game: game6).first_or_create(team: team2, game: game6, score: 50)
game6_team3 = GamesTeam.where(team: team3, game: game6).first_or_create(team: team3, game: game6, score: 50)

game1_tournament = GamesTournament.where(game: game1, tournament: tournament).first_or_create(game: game1, tournament: tournament)
game2_tournament = GamesTournament.where(game: game2, tournament: tournament).first_or_create(game: game2, tournament: tournament)
game3_tournament = GamesTournament.where(game: game3, tournament: tournament).first_or_create(game: game3, tournament: tournament)
game4_tournament = GamesTournament.where(game: game4, tournament: tournament).first_or_create(game: game4, tournament: tournament)
game5_tournament = GamesTournament.where(game: game5, tournament: tournament).first_or_create(game: game5, tournament: tournament)
game6_tournament = GamesTournament.where(game: game6, tournament: tournament).first_or_create(game: game6, tournament: tournament)

