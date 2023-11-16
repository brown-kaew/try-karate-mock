Feature: payment service mock

Background:
* configure responseHeaders = {"Content-Type":"application/json"}

Scenario: pathMatches('/payments') && methodIs('POST') && karate.get('request.payment_id') == 'test1234'
    * def response = read('response/test1234.json')

Scenario: pathMatches('/payments') && methodIs('POST') && karate.get('request.payment_id') == 'test4321'
    * def response = read('response/test4321.json')
