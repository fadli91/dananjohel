*** Setting ***

*** Variables ***
${packagename}		xpath://*[@id="gatsby-focus-wrapper"]/span/div/main/section[2]/div/div[3]/div[2]/div[1]/div[2]/span

${packageqty}		xpath://*[@id="gatsby-focus-wrapper"]/span/div/main/section[2]/div/div[3]/div[2]/div[1]/div[1]/div/span

${packageprice}		xpath://*[@id="gatsby-focus-wrapper"]/span/div/main/section[2]/div/div[3]/div[2]/div[1]/div[3]/span

${monitoringname}		xpath://*[@id="gatsby-focus-wrapper"]/span/div/main/section[2]/div/div[3]/div[2]/div[2]/div[2]/span

${monitoringqty}		xpath://*[@id="gatsby-focus-wrapper"]/span/div/main/section[2]/div/div[3]/div[2]/div[2]/div[1]/span

${monitoringprice}		xpath://*[@id="gatsby-focus-wrapper"]/span/div/main/section[2]/div/div[3]/div[2]/div[2]/div[3]/span

${shippingplaceholder}		xpath://*[@id="gatsby-focus-wrapper"]/span/div/main/section[2]/div/div[3]/div[2]/div[3]/div[2]/span

${promocode}		xpath://*[@id="gatsby-focus-wrapper"]/span/div/main/section[2]/div/div[3]/div[2]/div[4]/div[2]/span

${promodiscount}		xpath://*[@id="gatsby-focus-wrapper"]/span/div/main/section[2]/div/div[3]/div[2]/div[4]/div[3]/span

${subtotal}		xpath://*[@id="gatsby-focus-wrapper"]/span/div/main/section[2]/div/div[3]/div[2]/div[6]/div/h4/span

${securecheckoutbtn}	xpath://*[@id="gatsby-focus-wrapper"]/span/div/main/section[2]/div/div[3]/div[3]/div/a


${Delay}		5s
${QuickDelay}	1s

*** Keywords ***
Verify Package
	Wait Until Element Is Visible		${packagename}		20s			Haven is not displayed
	Element Text Should Be				${packagename}		Haven		Package Name is not Haven
	Element Text Should Be				${packageqty}		1		Package Quantity is not 1
	Element Text Should Be				${packageprice}		$489.86		Package Price is not $489.86
	sleep								${QuickDelay}

Verify Monitoring Plan
	Wait Until Element Is Visible		${monitoringname}		20s			Monitoring is not displayed
	Element Text Should Be				${monitoringname}		Interactive Alarm Monitoring		Monitoring Name is not Interactive Alarm Monitoring
	Element Text Should Be				${monitoringqty}		1x		Monitoring Quantity is not 1x
	Element Text Should Be				${monitoringprice}		$0.00		Monitoring Price is not $0.00
	sleep								${QuickDelay}

Verify Shipping Placeholder
	Wait Until Element Is Visible		${shippingplaceholder}		20s			Shipping Placeholder is not displayed
	Element Text Should Be				${shippingplaceholder}		Free Shipping (5-7 business days)		Shipping Placeholder is not Free Shipping (5-7 business days)

Verify Promo Code
	Wait Until Element Is Visible		${promocode}		20s			Applied Promo Code is not displayed
	Element Text Should Be				${promocode}		NEW45SYSTEM Discount Applied		Monitoring Name is not NEW45SYSTEM Discount Applied
	Element Text Should Be				${promodiscount}		-$220.44		Promo Discount is not -$220.44
	sleep								${QuickDelay}

Verify Subtotal
	Wait Until Element Is Visible		${subtotal}		20s			Subtotal is not displayed
	Element Text Should Be				${subtotal}		$269.42		Shipping Placeholder is not $269.42

Verify Secure Checkout Button
	Wait Until Element Is Visible		${securecheckoutbtn}		20s			Secure Checkout Button is not displayed
	sleep								${QuickDelay}	

Click Secure Checkout Button
	Click Element						${securecheckoutbtn}
	sleep								${QuickDelay}