*** Setting ***

*** Variables ***
${thankyoutxt}		xpath://*[@id="gatsby-focus-wrapper"]/span/div/main/section[1]/div/div/h3
${backtohmpgbtn}		xpath://*[@id="gatsby-focus-wrapper"]/span/div/main/section[1]/div/div/a


${Delay}		5s
${QuickDelay}	1s

*** Keywords ***
Verify Order Summary Page
	Wait Until Element Is Visible		${thankyoutxt}		20s			Thank You Text is not displayed
	sleep								${QuickDelay}

Verify Back To Home Page Button
	Element Should Be Visible			${backtohmpgbtn}		Add To Cart is not displayed
	sleep								${QuickDelay}

Click Back To Home Page Button
	Click Element						${backtohmpgbtn}
	sleep								${Delay}