Feature: As Nasa
         In order to observer mars
         I should be able to direct my rover

  Scenario:
    Given There is a rover at position "1 2 N"
    And Nasa sends the command "L M L M L M L M M"
    Then The rover position should be "1 3 N"

  Scenario:
    Given There is a rover at position "2 2 N"
    And the limit of pleatu is "10 10"
    And Nasa sends the command "M M M M M M M M M M M M M M M M M M"
    Then The rover should say "I am going to get lost"