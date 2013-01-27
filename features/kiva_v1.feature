Feature: Kiva V1 Client
  As a client for Kiva API
  I want to be able to query data from Kiva
  In order to gather data in a consistent data format

  Scenario: Query Journal Entries Comments
    Given Kiva has "journal_entries_comments" api specified as "GET /journal_entries/:id/comments"
    When I query API "journal_entries_comments" api with id "1"
    Then I should get a correct JSON response

  Scenario: Query Newest Loans
    Given Kiva has "lender_newest" api specified as "GET /lenders/newest"
    When I query API "lender_newest"
    Then I should get a correct JSON response






