@ON-849
Feature: Default

	#As a user with valid credentials, I should be able to log-in to the system.
	@ON-866 @ON-850 @Examples("gwen/test_data/testdata.csv") 
	Scenario Outline: Login Tap
		Given I login with "<USERNAME>","<PASSWORD>"
		Then I logout the session
		
		# Examples: sample data
		# |USERNAME|PASSWORD|
		# |wui_rm1|wui_rm1|
		# |wui_rm2|wui_rm2|