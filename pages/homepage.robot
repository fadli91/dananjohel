*** Setting ***

*** Variables ***
${shopnowbtn}		xpath://*[@id="gatsby-focus-wrapper"]/span/div/header/nav[2]/a[2]
${simplilogo}		xpath://*[@id="gatsby-focus-wrapper"]/span/div/header/nav[1]/a[1]/div/picture/img


${Delay}		5s
${QuickDelay}	1s

*** Keywords ***
Verify Simplisafe Homepage
	Wait Until Element Is Visible		${simplilogo}		20s			Simplisafe Logo is not displayed
	sleep								${QuickDelay}

Verify Shop Now Button
	Element Should Be Visible			${shopnowbtn}		Shop Now Button is not displayed
	sleep								${QuickDelay}

Click Shop Now Button
	Click Element						${shopnowbtn}
	sleep								${QuickDelay}