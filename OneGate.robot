*** Settings ***
Documentation     Test login and Dashboard creation functionality for the web application
Library           SeleniumLibrary
Library           ScreenCapLibrary
Resource          Ressources/Varibles.robot
Resource          Ressources/Keywaords.robot
Suite Setup       Open Browser To SignUp Page
Suite Teardown    Close All Browsers

*** Test Cases ***
Valid Login and Database Creation
    [Documentation]     Combined test for valid login followed by Database Creation
    Login With Credentials    ${VALID_EMAIL}    ${VALID_PASS}
    Verify Login Success
    Navigate To Add DATA Sources   
    FIll DATA Sources
    Data Prep
    AI training
    Navigate to Chat
    Chat With The AI
    Send The Chart To Dashboard
    Navigate To Add New User
    Fill New User Workspace Form
    Submit New User Workspace Creation
    Delete The Dataset