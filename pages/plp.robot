*** Setting ***

*** Variables ***
${havencard}		xpath://*[@id="gatsby-focus-wrapper"]/span/div/main/section[2]/div/div[2]
${seedetailsbtn}		xpath://*[@id="gatsby-focus-wrapper"]/span/div/main/section[2]/div/div[2]/div[3]/div[2]/a/div


${Delay}		5s
${QuickDelay}	1s

*** Keywords ***
Verify Package
	Wait Until Element Is Visible		${havencard}		20s			Package PLP is not displayed
	sleep								${QuickDelay}

Verify See Details Button on Haven Product
	Element Should Be Visible			${seedetailsbtn}		See Details Button is not displayed
	sleep								${QuickDelay}

Click See Details Button on Haven Product
	Set Focus To Element				${seedetailsbtn}
	Click Element						${seedetailsbtn}
	sleep								${QuickDelay}