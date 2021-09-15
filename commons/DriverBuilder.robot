*** Settings ***
Library 			SeleniumLibrary
Library 			OperatingSystem

*** Variables ***
${Delay}            5s
${RemoteStatus}     False
${RemoteUrl}        http://127.0.0.1:4455/wd/hub


*** Keywords ***
Open Browser Non Remote Url
	[Arguments]		${url}
	open browser 	${url}		Chrome
	Set Window Size		1350		900

Open Browser Remote Url
	[Arguments]		${url}
  	Open Browser    ${url}    Chrome     none    ${RemoteUrl}

Open Browser to the Home pages
	[Arguments]			${url}
  	Run Keyword If    	'${RemoteStatus}' == 'True'       Open Browser Remote Url 	${url}
  	...     ELSE      	Open Browser Non Remote Url 	${url}

Close Website
	Close Browser