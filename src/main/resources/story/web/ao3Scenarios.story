Description: study on my automation capabilities

Meta:
@skip
					 
Scenario:  Opening a site
Given I am on a page with the URL 'https://archiveofourown.org/'
When I wait until the page title contains the text 'Home | Archive of Our Own'
When I establish baseline with `logged-out`

Scenario: Consent is important
Given I am on a page with the URL 'https://archiveofourown.org/'
When I wait until the page title contains the text 'Home | Archive of Our Own'
When I click on an element with the attribute 'id'='tos_agree'
When I click on an element with the attribute 'id'='accept_tos'
Then the text 'A fan-created, fan-run, nonprofit, noncommercial archive for transformative fanworks, like fanfiction, fanart, fan videos, and podfic' exists

Scenario: Getting invited
Given I am on a page with the URL 'https://archiveofourown.org/'
When I wait until the page title contains the text 'Home | Archive of Our Own'
When I click on an element by the xpath '//p[@class="actions"]/a'
When I wait until the page title contains the text 'Invite Requests | Archive of Our Own'
When I enter '#{generate(Internet.emailAddress)}' in a field with the name 'invite_request[email]'
When I click on a button with the name 'commit'
Then the text 'You've been added to our queue! Yay! We estimate that you'll receive an invitation around 2022-02-10. We strongly recommend that you add do-not-reply@archiveofourown.org to your address book to prevent the invitation email from getting blocked as spam by your email provider.' exists