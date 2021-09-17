*** Setting ***

*** Variables ***
${shoppackagescard}		xpath://*[@id="gatsby-focus-wrapper"]/span/div/main/section[1]/div/div[2]
${shoppackagesbtn}		xpath://*[@id="gatsby-focus-wrapper"]/span/div/main/section[1]/div/div[2]/div/div[2]/div/a


${Delay}		5s
${QuickDelay}	1s

*** Keywords ***
Verify CLP
	Wait Until Element Is Visible		${shoppackagescard}		20s			Shop Packages Card is not displayed
	sleep								${Delay}

Verify Shop Packages Button
	Element Should Be Visible			${shoppackagesbtn}		Shop Packages Button is not displayed
	sleep								${QuickDelay}

Click Shop Packages Button
	Set Focus To Element				${shoppackagesbtn}
	Click Element						${shoppackagesbtn}
	sleep								${QuickDelay}