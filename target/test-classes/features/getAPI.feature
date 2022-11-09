Feature: GET API feature

Scenario: get user details

Given url baseUrl + '/public/v1/users'
And path '30'
When method GET
Then status 200
* print response
* def jsonResponse = response
* print jsonResponse
* def actId = jsonResponse.data.id
* def actName = jsonResponse.data.name
* def actEmail = jsonResponse.data.email
* print actName
* match actId == 30
* match actName == 'Agnimitra Saini'
* match actEmail == 'agnimitra_saini@smith-cummings.io'
Scenario: get user details- user not found

Given url baseUrl + '/public/v1/users'
And path '1'
When method GET
Then status 404