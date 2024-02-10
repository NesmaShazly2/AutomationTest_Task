*** Settings ***
Library    SeleniumLibrary
Resource   ../Pages/LoginPage.robot
Resource   ../Pages/HomePage.robot
Resource   ../Pages/CommonKeywords.robot
Resource   ../Resources/TestData.robot

*** Variables ***

*** Keywords ***

*** Test Cases ***
Open browser and Navigate to website
    [Tags]    enabled
   Launch browser and Open website

Validate successful login using valid email and Password
    [Tags]
  # Assert home page is opened successfully by checking home page title
  Asset Home page is opened successfully
  Go to Login Page
  # Assert login page is opened successfully by checking login page title
  Assert login page is opened successfully
  # Enter login data (email and password) then click login
  Enter Email Address    ${validUserEmail}
  Enter Password     ${validUserPassword}
  Click on Login Button
  # Assert user is logged successfully by checking the logged in tab containing user email
  Asset that user logged successfully
  #Logout and Assert that user is logged out successfully by checking login button is visible
  Click Logout Button
  Assert that user logged out successfully

