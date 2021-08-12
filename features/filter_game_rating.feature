# language: en

Feature: Search games by raiting

  @gamesByRate
  Scenario: Filter games that equals 'M' in their rate
      Given a set of games
     | NAME                       | RELEASE DATE | DEVELOPER            | RATE   |
     | The Witcher 3: Wild Hunt   | 2015         | CD Projekt           | M      |
     | Splatoon                   | 2016         | Nintendo             | T      |
     | Super Smash Bros. Ultimate | 2018         | Bandai Namco Studios | E      |
     | The Last of Us             | 2013         | Naughty Dog          | M      |
      Given the user enters the rate: M
      When the user search games by rate
      Then 2 games will match
      And the names of these games are
      | NAME                       |
      | The Witcher 3: Wild Hunt   |
      | The Last of Us             |
      And the following message is displayed: 2 games were found.

@gamesByName
  Scenario: Filter games by rate without finding result
      Given a set of games
     | NAME                       | RELEASE DATE | DEVELOPER            | RATE   |
     | The Witcher 3: Wild Hunt   | 2015         | CD Projekt           | M      |
     | Splatoon                   | 2016         | Nintendo             | T      |
     | The Last of Us             | 2013         | Naughty Dog          | M      |
      Given the user enters the rate: 'E'
      When the user search games by rate
      Then 0 games will match
      And the following message is displayed: No game with the specified rating was found.