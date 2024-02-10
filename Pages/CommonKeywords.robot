
*** Settings ***
Library    SeleniumLibrary
Resource   ../Resources/ConfigurationFile.robot


*** Keywords ***

Launch browser and Open website
      open browser    ${URL}    browser=${browser}     options=add_experimental_option("detach", True)
      maximize browser window


Assert Element Text
    [Arguments]    ${Locator}     ${txt}
     element text should be    ${Locator}     ${txt}