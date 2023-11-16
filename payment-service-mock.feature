Feature: payment service mock

Background:
* configure responseHeaders = {"Content-Type":"application/json"}

Scenario: pathMatches('/payments') && methodIs('POST') && karate.get('request.payment_id') == 'test1234'
    * def response = '{"status":"SUCCESS","payment_id":"test4321"}'

Scenario: pathMatches('/payments') && methodIs('POST') && karate.get('request.payment_id') == 'test4321'
    * def response = read('response/test4321.json')
