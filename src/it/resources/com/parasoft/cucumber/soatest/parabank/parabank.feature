Feature: ParaBank accounts
	Create and use accounts in ParaBank

Scenario: Create a new loan account
Given I am user 12212
And using funds from account 54321
When I create a new loan account
Then A new loan account should exist
