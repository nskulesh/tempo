Lifecycle:
Examples:
|email|userName|password|
|#{generate(Internet.emailAddress)}|#{generate(Internet.slug)}|#{generate(regexify '[a-z]{5}[A-Z]{2}')}|

Meta:
@skip
					 
Scenario:  Registeration new user
Given I am on a page with the URL 'https://myanimelist.net'
When I click on an element by the xpath '//a[@class="btn-signup"]'
When I wait until an element with the name 'email' appears
When I enter '<email>' in a field by the xpath '//input[@id="loginEmail"]'
When I enter '<userName>' in a field by the xpath '//input[@name="user_name"]'
When I enter '<password>' in a field by the xpath '//input[@name="password"]'
When I click on an element by the xpath '//input[@id="show-password"]'
When I wait until state of element located `By.xpath(//input[@type="button"])` is ENABLED
When I click on an element by the xpath '//input[@type="button"]'
When I wait until an element with the name 'email' disappears
When I ESTABLISH baseline with `result`

Scenario: Logging in
Given I am on a page with the URL 'https://myanimelist.net'
When I click on an element by the xpath '//a[@class="btn-login"]'
When I wait until an element with the name 'user_name' appears
When I enter '<userName>' in a field by the xpath '//input[@name="user_name"]'
When I enter '<password>' in a field by the xpath '//input[@name="password"]'
When I click on an element by the xpath '//input[@value="Login"]'
When I wait until an element with the name 'user_name' disappears
When I wait `15000` for debug
