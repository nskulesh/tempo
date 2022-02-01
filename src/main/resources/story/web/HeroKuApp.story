Trying my hand at more complex things
					 
Scenario:  Adding and removing elements
Given I am on a page with the URL 'https://the-internet.herokuapp.com/'
When I click on element located `By.xpath(//a[contains(text(),"Add/Remove Elements")])`
When I wait until element located `By.xpath(//button[contains(text(),"Add Element")])` appears
When I '5' times do:
|step|
|When I click on element located `By.xpath(//button[contains(text(),"Add Element")])`|
When I '5' times do:
|step|
|When I click on element located `By.xpath(//button[contains(text(),"Delete")][1])`|
Then the number of elements found by the xpath '//button[contains(text(),"Delete")]' is = '0'
