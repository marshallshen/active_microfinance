Feature: Kiva V1 Client
  As a client for Kiva API
  I want to be able to query data from Kiva
  In order to gather data in a consistent data format

  Scenario: Query Newest Loans
    Given Kiva has an api specified as "/lenders/newest"
    When I query the API with the client
    Then I should get a correct JSON response

  Scenario: Query Partners
    Given Kiva has an api specified as "/partners"
    When I query the API with the client
    Then I should get a correct JSON response

  # Scenario: Query Journal Entries Comments
  #   Given Kiva has "journal_entries_comments" api specified as "GET /journal_entries/:id/comments"
  #   When I query API "journal_entries_comments" api with id "1"
  #   Then I should get a correct JSON response




