*** Settings ***
Library  SeleniumLibrary
Library   OperatingSystem
Library    XML
Library    Process
Resource  Varibles.robot
Library    ScreenCapLibrary

*** Keywords ***
Open Browser To SignUp Page
    Open Browser                ${LOGIN_URL}        ${BROWSER}
    Maximize Browser Window
    Set Selenium Speed    0.5
    Wait Until Page Contains Element    xpath=//*[@id="dataone-app"]/div/div[1]/div[2]/h1    10s  
Login With Credentials
    [Arguments]                 ${username}         ${password}
    Input Username              ${username}
    Input Password              ${password}
    Submit Credentials
    Run Keyword If              '${username}' == '${VALID_EMAIL}'    Verify Login Success
    ...    ELSE                 Verify Login Failure

Input Username
    [Arguments]                 ${username}
    Input Text                  id=username            ${username} 

Input Password
    [Arguments]                 ${password}    
    Input Text                  id=password         ${password}
    

Input Confirm Password  
     [Arguments]                ${confirmNewPassword}
    Input Text                  id=signUp_confirmNewPassword   ${confirmNewPassword}


Submit Credentials
    Click Button                xpath=//*[@id="dataone-app"]/div/div[1]/div[3]/form/div[6]/div/div/div/div/button 

Verify Login Success
    Wait Until Location Contains    https://workspace-preprod.onegate.ai/profile       10s  
Navigate To Add DATA Sources
    Go To    https://workspace-preprod.onegate.ai/data-management/data-source
    Wait Until Page Contains    Data Center
    Click Button    ${Created_Data_Sources_button}
    Sleep    2s
    Click Element    ${NAME_DATABESE_NAME}

FIll DATA Sources
    Input Text    ${Display_name_input}    ${Display_name}
    Input Text    ${Host_input}    ${Host}
    Input Text    ${Schema_name_input}    ${Schema_name}
    Input Text    ${Password_input}    ${Password}
    Input Text    ${Name_input}    ${Name}
    Input Text    ${Port_input}    ${Port}
    Input Text    ${Username_input}    ${Username}
    Click Element  ${SUBMIT_BUTTON_DATASURCE}
    Sleep    10s
    Input Text    ${dataset_name_input}    ${dataset_name}
    Click Element    ${Continue_button_1}
    Sleep    5s
Data Prep
    Click Element    ${data_selection_departments}
    Click Element    ${data_selection_employees}
    Click Button     ${move_button}
    Click Element     ${Continue_button_2}
    Sleep    3s

AI training
     Click Element    ${Ai_button_continue}
     Sleep    5s
     Click Element   ${departments_table_selection}
     Click Element    ${AI_button__genrate}
     Sleep    5s
     Click Element    ${Continue_button_3}
     Sleep    5s
     Click Element    ${skipe_button}

Verify Datasource and dataset Creation Success
    Table Column Should Contain    xpath=/html/body/div[1]/div/div[2]/div/main/div/div/div[2]/div[2]/div/div[2]/div/div/div[2]/table/tbody/tr[1]/td[1]/div/span   1    ${Display_name} 
    Click Button    ${datasets_button}
    Sleep    2s
    Table Column Should Contain    xpath=/html/body/div[1]/div/div[2]/div/main/div/div/div[2]/div[2]/div/div[2]/div/div/div[2]/table/tbody/tr[1]/td[1]/div/span    1   ${dataset_name}
    Table Row Should Contain    xpath=//*[@id="rc-tabs-0-panel-data-sources"]/div[2]/table/tbody/tr[1]/td[1]/div/span    1    ${dataset_name}

Navigate to Chat
    Go To           ${Chat_URl}
    Sleep   10s
    Click Element    ${Dataset_connection}
    Click Element    ${dataset_name}
Chat With The AI
    Input Text       ${Chat_input}    How many employees are assigned to each department?
    Sleep    8s
Send The Chart To Dashboard
    Click Element    ${Chat_button_send}
    Sleep    20s
    Click Element   ${Send_button}
    Sleep    6s
    Click Element    ${Add_Dashboard_button}
    Input Text       ${NAME_DASHBOARD_FIELD}    ${NEW_NAME_DASHBOAD}
    Input Text       ${DESCRIPTION_DASHBOARD_FIELD}    ${NEW_DESCRIPTION_DASHBOARD}
    Click Element    ${SUBMIT_DASHBOARD_BUTTON}
    Sleep    5s
    Click Element    css=div:nth-child(1) > .dashboard-list-title
    Click Element    ${Add_Page_button}
    Sleep    5s
    Input Text       ${NAME_PAGE_FIELD}    ${NEW_PAGE_NAME}
    Click Element    ${TYPE_PAGE_FIELD}
    Click Element    ${TYPE_PAGE}
    Click Element    ${SUBMIT_PAGE_BUTTON}
    Sleep    6s
    Click Element    xpath=//h3[contains(.,'${NEW_PAGE_NAME}')]
    Sleep    2s
    Click Element    ${ADD_FOR_ME_BUTTON}
    Sleep    2s
    Click Element    ${GO_TO_DASHBOARD_BUTTON}
    Sleep    7s

Navigate To Add Dashboard
    Go To    ${ADD_DASHBOARD_URL}
    Wait Until Page Contains   Dashboards
    Click Element  xpath=//button[@class='add-button'] 
    Wait Until Element Is Visible    ${NAME_DASHBOARD_FIELD}    10s

Fill Dashboard Form
    Input Text      ${NAME_DASHBOARD_FIELD}  ${NEW_NAME_DASHBOAD}
    Input Text      ${DESCRIPTION_DASHBOARD_FIELD}   ${NEW_DESCRIPTION_DASHBOARD} 
    Click Element   ${SUBMIT_BUTTON_DASHBOARD}
Submit Dashboard Creation
    Wait Until Page Contains Element    xpath=//*[normalize-space()='Dashboard created successfully.']     5s   

Verify Dashboard Creation Success
    Wait Until Page Contains     Dashboard1  5s

Navigate To Dashboard Creation
    Reload Page 
    Sleep    3s
    Click Element    xpath=//*[@id="dashboard-modal"]/div[2]/div[3]/div/div/div/a
    Wait Until Page Contains   Dashboard1  5s 

Dashboard Page Creation
    Click Button    xpath=//*[@id="dashboard-modal"]/div/div[2]/div/button
    Wait Until Element Is Visible    ${NAME_PAGE_FIELD}    10s

Fill Dashboard Page Form
    Input Text      ${NAME_PAGE_FIELD}  ${NEW_NAME_DASHBOAD}
    Click Element   ${TYPE_PAGE_FIELD}
    Click Element   ${TYPE_PAGE}
    Click Button    ${SUBMIT_BUTTON_DASHBOARD_PAGE}

Submit Dashboard Page Creation
    Wait Until Page Contains Element    xpath=//*[normalize-space()='Page created successfully.']     5s

Navigate To Add Workspace
    Go To    ${ADD_Workspace_URL}
    Wait Until Page Contains   Workspace
    Sleep    3s
    Click Element  xpath=//*[@id="workspace-modal"]/div[1]/button 
    Wait Until Element Is Visible    ${NAME_Workspace_FIELD}    10s

Fill Workspace Form
    Input Text      ${NAME_Workspace_FIELD}  ${NEW_WORKSPACE_NAME} 
    Click Element   ${SUBMIT_BUTTON_Workspace}

Submit Workspace Creation
    Wait Until Page Contains Element    xpath=//*[normalize-space()='Workspace has been created successfully.']     5s

Navigate To Add New User
    Go To    ${ADD_USERWORKSPACE_URL}
    Wait Until Page Contains   User Management
    Sleep    2s
    Click Element  css=.ant-btn-default
    Click Element    css=.sc-SPJDV:nth-child(1)
    Wait Until Element Is Visible    ${FIRST_NAME_FIELD_WORKSPACE}    10s

Fill New User Workspace Form
    Input Text      ${FIRST_NAME_FIELD_WORKSPACE}  ${NEW_USER_FRIST_NAME}
    Input Text      ${LAST_NAME_FIELD_WORKSPACE}  ${NEW_USER_LAST_NAME}
    Input Text      ${EMAIL_FIELD_WORKSPACE}  ${NEW_USER_EMAIL}
    Click Element      ${PERMISSIONS_FIELD_WORKSPACE}
    Click Element    xpath=/html/body/div[2]/div/div/div/div/div[3]/div/div/div/div[1]/span[4]/span
    Click Element    xpath=/html/body/div[2]/div/div/div/div/div[3]/div/div/div/div[2]
    Click Element    xpath=/html/body/div[2]/div/div/div/div/div[3]/div/div/div/div[3]
    Click Element    xpath=/html/body/div[2]/div/div/div/div/div[3]/div/div/div/div[4]
    Click Element      ${PERMISSIONS_FIELD_WORKSPACE}
    Click Element   ${SUBMIT_BUTTON_INVITE_USER}
Submit New User Workspace Creation
    Wait Until Page Contains Element    xpath=//*[normalize-space()='Invitation sent successfully.']     5s

Verify New User Workspace Creation Success
    Wait Until Page Contains     nio3cool12@swagpapa.com  5s

Delete The Dataset
    go to  ${ADD_DADATCOURCE_URL}
    Click Element    ${Datasets}
    Sleep    4s
    Click Element    ${Dataset_Deleting_bt}
    Sleep    2s
    Click Element    ${Dataset_Cfr_bt_del}

Delete The Datasource
    Go To    ${ADD_DADATCOURCE_URL}
    Sleep    4s
    Click Element    ${Datasource_Deleting_bt}
    Sleep    2s
    Click Element    ${Datasource_Cfr_bt_del}


Verify Login Failure
    Wait Until Element Is Visible   xpath=//*[@id="root"]/div[2]    10s
    Element Text Should Be          xpath=//*[@id="root"]/div[2]    Une erreur s'est produite lors de la connexion.
