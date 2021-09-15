*** Setting ***

*** Variables ***
${haventitle}		xpath://*[@id="gatsby-focus-wrapper"]/span/div/main/section[1]/div[1]/div[2]/div/h1
${addtocartbtn}		xpath://*[@id="gatsby-focus-wrapper"]/span/div/main/section[1]/div[1]/div[2]/div/div[5]/button


${Delay}		5s
${QuickDelay}	1s

*** Keywords ***
Verify Haven PDP
	Wait Until Element Is Visible		${haventitle}		20s			Haven PDP is not displayed
	Element Text Should Be				${haventitle}		The Haven		PDP Title is not The Haven
	sleep								${QuickDelay}

Verify Add To Cart Button on Haven Product
	Element Should Be Visible			${addtocartbtn}		Add To Cart is not displayed
	sleep								${QuickDelay}

Click Add To Cart Button on Haven Product
	Click Element						${addtocartbtn}
	sleep								${QuickDelay}