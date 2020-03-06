# team-league

## Assumptions made

- Games can only be played by 2 teams at a time
  - This can easily be altered by removing the Team1 and Team2 hardcodedness...
- Only League managers can manage players (roles), teams, games and tournaments
- A team can only have 1 coordinator
- After a game has been played, the game cannot be altered
- After a tournament has started it cannot be altered
- This during this exercise and the different branches and commits, this app has not yet gone live
  - This was an assmption made after I realised I didn't think through the entire app and also found a problem with one of the join tables that didn't want to update.

## Extra things I could have looked at

- Snapshots of games and tournaments
  - Meaning that games cannot be altered after they have been played, but teams can. This means that a specific games team can change because the team can be altered.
  - By adding a snapshot of the team, scores, etc for a game after it has been played would help with this
  - The same with tournaments after they have started
  - This will also help with information retrieval (you can now pull all the information from a single source instead of relations)
- Adding a dashboard to the home page where you have a basic view over the up and coming games and the tournaments.
