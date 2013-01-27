Feature: Kiva V1 data Writer
  As a data writer for Kiva API
  I want to be able to parse the response from Kiva V1 client to a CSV file
  In order to further analyze the data

  @wip
  Scenario: Write Newest Loans to a CSV file
    Given Kiva has parsed api "/lenders/newest"
    When I write the response body to file "newest_lenders.csv"
    Then I should have a new file called "newest_lenders.csv"