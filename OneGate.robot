*** Settings ***
Documentation     End-to-end workflow tests for the web application
Library           SeleniumLibrary
Library           ScreenCapLibrary
Resource          Ressources/Varibles.robot
Resource          Ressources/Keywaords.robot
Suite Setup       CI-Compatible Chrome Launch
Suite Teardown    Close All Browsers

*** Test Cases ***
Invalid Login
    [Template]    login With Invalid Credentials
    ${INVALID_EMAIL}    ${INVALID_PASS}

Valid Login
    [Template]    Login With Credentials
    ${VALID_EMAIL}    ${VALID_PASS}

Create New Data Source
    Navigate To Add DATA Sources   
    FIll DATA Sources
    Data Prep
    AI training
Verify Datasource and dataset Creation Success
    Verify Datasource and dataset Creation Success
Navigate to Chat
    Navigate to Chat
Chat With AI
    Chat With The AI
Send The Chart To Dashboard
    Send The Chart To Dashboard
#Navigate to Add Dashboard
    #Navigate To Add Dashboard
#Fill Dashboard Form
    #Fill Dashboard Form
#Submit Dashboard Creation
    #Submit Dashboard Creation
#Verify Dashboard Creation Success
    #Verify Dashboard Creation Success
#Dashboard Page Creation
    #Dashboard Page Creation
#Fill Dashboard Page Form
    #Fill Dashboard Page Form
Navigate To Add New User
    Navigate To Add New User    
Fill New User Workspace Form
    Fill New User Workspace Form    
Submit New User Workspace Creation
    Submit New User Workspace Creation
Delete The Dataset
    Delete The Dataset        
Delete The Datasource
    Delete The Datasource
Delete The Dashboard
    Delete The Dashboard
Delete User From Workspace
    Delete User From Workspace
       
