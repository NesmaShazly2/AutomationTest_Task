*** Settings ***
Library    SeleniumLibrary
Resource   ../Pages/CommonKeywords.robot

*** Variables ***
${homePageTitleLocator}     //h1/span
${LoginBtnLocator}    css:*[href='/login']
${loggedUserLocator}  xpath=//a/b
${logoutBtnLocator}     css:*[href='/logout']


*** Keywords ***
Asset Home page is opened successfully
     Assert Element Text       ${homePageTitleLocator}     Automation

Go to Login Page
     click element    ${LoginBtnLocator}

Asset that user logged successfully
     wait until element is visible  ${loggedUserLocator}
     Assert Element Text       ${loggedUserLocator}     nesma@gmail.com

Click Logout Button
     click element   ${logoutBtnLocator}

Assert that user logged out successfully
     element should be visible    ${LoginBtnLocator}