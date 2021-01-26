*** Settings ***
Library    SeleniumLibrary    

Suite Setup       Log    I am inside Test suite setup
Suite Teardown    Log    I am inside Test Suite Teardown
Test Setup        Log    I am inside Test Setup
Test Teardown     Log    I am inside Test Teardown       

Default Tags    Sanity

*** Test Cases ***
MyFirstTest
    [Tags]    smoke
    Log    Hello Framework!!    
    
MySecondTest
    [Tags]    Example1
    Log    I am inside 2nd test
    Set Tags    Regression1   
    Remove Tags    Regression1
    
MyThirdTest
    Log    I am inside 3rd test  
    
MyFourthTest
    Log    I am inside 4th test  
    
# MyFirstSeleniumTest
    # Open Browser   https://google.com  chrome
    # Set Browser Implicit Wait    5
    # Input Text    name=q               Automation step by step  
    # Press Keys    name=q  ENTER
    # # Click Button    name=btnK    
    # Sleep    2    
    # Close Browser
    # Log    Test Completed    
    
# SampleLoginTest
    # [Documentation]    This is a sample login test
    # Open Browser       ${URL}  Chrome
    # Set Browser Implicit Wait    5
    # LoginKW
    # Click Element      id=welcome
    # Click Element      link=Logout
    # Close Browser
    # Log                Test Completed                
    # Log                This test was executed by %{Username} on %{os}
    
*** Variables***
${URL}   https://opensource-demo.orangehrmlive.com/
@{CREDENTIALS}    Admin    admin123
&{LOGINDATA}   Username=Admin  Password=admin123
 
***Keywords***
LoginKW
    Input Text         id=txtUsername   @{CREDENTIALS}[0]
    Input Password     id=txtPassword   &{LOGINDATA}[Password] 
    Click Button       id=btnLogin