*** Settings ***
Library    SeleniumLibrary
Resource   ../Pages/CommonKeywords.robot
*** Variables ***
${LoginPage_Title_Locator}    css:div.login-form>h2
${email_Locator}       xpath=//form[@action='/login']/input[@type='email']
${password_Locator}    xpath=//form[@action='/login']/input[@type='password']
${loginButtonLocator}    xpath=//form[@action='/login']/button[@type='submit']


*** Keywords ***
Assert login page is opened successfully
    Assert Element Text    ${LoginPage_Title_Locator}    Login to your account

Enter Email Address
    [Arguments]  ${emailAddress}
     input text    ${email_Locator}     ${emailAddress}

Enter Password
    [Arguments]   ${password}
      input text    ${password_Locator}     ${password}

Click on Login Button
     click element   ${loginButtonLocator}

