
Feature: to create a issues in Jira project

  Background:
    Given url 'https://juggernauttester.atlassian.net/'

	#* def body = read('../resources/input.json')

  Scenario: to create a bug in a particular project

    And header Authorization = "Basic a2FkYXJsYS5wcmFkZWVwNEBnbWFpbC5jb206TXRINDhMUkgzaWZqSzJsZlpSa20xQkY4"
    And path '/rest/api/2/issue'
    And table reqBody
      |fields|
      |{"project":{"key":"MYP"},"summary":"defect related to payments feaure","description":"This descrpition is given from table","issuetype":{"name":"Bug"}}|

    And request reqBody[0]
    When method POST
    Then status 201
    And print response









