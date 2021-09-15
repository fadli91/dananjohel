*** Setting ***

*** Variables ***
${iframe}		xpath://*[@id="gatsby-focus-wrapper"]/span/div/main/section[3]/div/div[1]/h5
${ccnumberfield}		xpath://*[@id="ccNumber"]
${cvcfield}					xpath://*[@id="CVV2"]
${monthfield}			xpath://*[@id="expMonth"]
${yearfield}			xpath://*[@id="expYear"]
${submitbtn}			xpath://*[@id="completeButton"]

${ccnumber}				4788250000028291
${cvc}					554
${month}				October
${year}					2024

${Delay}		5s
${QuickDelay}	1s

*** Keywords ***
Verify Payment Page
	Wait Until Element Is Visible		${iframe}		20s			Payment Page is not displayed
	sleep								${QuickDelay}

Enter Fields
	sleep								15
	Select Frame						xpath://*[@id="gatsby-focus-wrapper"]/span/div/main/section[3]/div/iframe
	Input Text							${ccnumberfield}		${ccnumber}
	Input Text							${cvcfield}				${cvc}
	Select From List By Index			id:expMonth				10
	Select From List By Index			id:expYear				5

Verify Submit Button
	Element Should Be Visible			${submitbtn}		Submit Button is not displayed
	sleep								${QuickDelay}

Click Submit Button
	Click Element						${submitbtn}
	sleep								${QuickDelay}