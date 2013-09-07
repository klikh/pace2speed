Feature: Convert pace to speed

Scenario: Convert pace to speed
  When pace2speed 5:00 is called
  Then it should print '12 km/h'




  
