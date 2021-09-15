*** Setting ***

*** Variables ***
${ordersummary}		xpath://*[@id="gatsby-focus-wrapper"]/span/div/main/section[1]/div/div[2]

${emailfield}		xpath://*[@id="Input-1"]

${fnamefield}		xpath://*[@id="Input-3"]

${lnamefield}		xpath://*[@id="Input-4"]

${streetfield}		xpath://*[@id="Input-5"]

${cityfield}		xpath://*[@id="Input-7"]

${statefield}		xpath://*[@id="state"]

${postalfield}		xpath://*[@id="Input-8"]

${phonefield}		xpath://*[@id="Input-9"]

${nextpaybtn}		xpath://*[@id="gatsby-focus-wrapper"]/span/div/main/section[2]/div/div[6]/div/div/button/span

${shipopt}			xpath://*[@id="gatsby-focus-wrapper"]/span/div/main/section[2]/div/div[4]/div/div[3]/form/div[2]/div/div[2]/label

${email}	dananjoyo.helyudanto@simplisafe.com
${fname}	Carl
${lname}	Johnson
${street}	2783 Gordon Street
${city}		Los Angeles
${state}	CA
${postal}	90017
${phone}	9095699591


${Delay}		5s
${QuickDelay}	1s

*** Keywords ***
Verify Order Summary
	Wait Until Element Is Visible		${ordersummary}		20s			Order Summary is not displayed
	sleep								${QuickDelay}

Enter Fields
	Input Text							${emailfield}		${email}
	Input Text							${fnamefield}		${fname}
	Input Text							${lnamefield}		${lname}
	Input Text							${streetfield}		${street}
	Input Text							${cityfield}		${city}
	Select From List By Value			name:state			${state}
	Input Text							${postalfield}		${postal}
	Input Text							${phonefield}		${phone}

Verify Shipping Options is displayed
	
	sleep								${QuickDelay}	

Verify Next Payment Button
	Element Should Be Visible			${nextpaybtn}		Next Payment Button is not displayed
	sleep								${QuickDelay}

Click Next Payment Button
	Wait Until Element Is Visible		${shipopt}		20s			Shipping Option is not displayed
	sleep								15
	Click Element						${nextpaybtn}