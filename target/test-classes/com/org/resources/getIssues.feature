
Feature: to get Jira issues
  Scenario: to get All issues present in a project
    Given url 'https://juggernauttester.atlassian.net/'
    And header Authorization = "Basic a2FkYXJsYS5wcmFkZWVwNEBnbWFpbC5jb206TXRINDhMUkgzaWZqSzJsZlpSa20xQkY4"
    And path 'rest/api/2/search'
    When method GET
    Then status 200
    And print response

#And match response.total == 5

#And match response.issues[0].id == '10004'






