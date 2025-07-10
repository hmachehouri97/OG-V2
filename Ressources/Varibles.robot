*** Variables ***
${LOGIN_URL}    https://workspace-preprod.onegate.ai/auth/sign-in
${BROWSER}      chrome
${VALID_EMAIL}  mspmit9@pdf-cutter.com
${VALID_PASS}   Admin@123
${INVALID_EMAIL}  admin@admins.com
${INVALID_PASS}   McpEnergy2024

# New User Creation
${ADD_USER_URL}       https://workspace-preprod.onegate.ai/auth/sign-up
${FIRST_NAME_FIELD}          id=signUp_firstName
${LAST_NAME_FIELD}           id=signUp_lastName
${EMAIL_FIELD}               id=signUp_email
${PASSWORD_FIELD}            id=signUp_password
${PASSWORD_CONFIRMTION_FIELD}      id=signUp_confirmNewPassword
${SUBMIT_BUTTON}             xpath=//*[@id="signUp"]/div[5]/div/div/div/div/button

# Add Created Data Sources
${ADD_DADATCOURCE_URL}       https://workspace-preprod.onegate.ai/data-management/data-source
${Created_Data_Sources_button}   xpath=//button[@class='ant-btn css-240cud ant-btn-default ant-btn-color-default ant-btn-variant-outlined create-button']
${NAME_DATABESE_NAME}            xpath=//div[@id='datacenter-modal']/div[2]/div[2]/div/div/div/div/div/div[2]/div/div[4]/div/div/div[2]/div[2]/div
${Display_name_input}            xpath=//input[@id='displayName']
${Host_input}                    xpath=//input[@id='host']
${Schema_name_input}             xpath=//input[@id='schemaName']
${Password_input}                xpath=//input[@id='password']
${Name_input}                    xpath=//input[@id='name']
${Port_input}                    xpath=//input[@id='port']
${Username_input}                xpath=//input[@id='username']
${SUBMIT_BUTTON_DATASURCE}       css=.ant-btn-primary
${dataset_name_input}            id=datasetName
${Continue_button_1}             css=button.ant-btn:nth-child(2)
${data_selection_departments}    xpath=//div[@class='ant-tree-list-holder-inner']//div[1]//span[3]//span[1]
${data_selection_employees}      xpath=//div[@class='sc-fwYydN chWKIB']//div[2]//span[3]//span[1]
${move_button}                   xpath=//div[@class='sc-fPNgKA ffTlyV']//button[1]
${Continue_button_2}             xpath=/html/body/div/div/div[2]/div/main/div/div[2]/div[2]/div/div[1]/div/div[1]/div/div[2]/div/div[2]/div[3]/button[2]/span
${Ai_button_continue}            xpath=/html/body/div/div/div[2]/div/main/div/div[2]/div[2]/div/div[1]/div/div[1]/div/div[2]/div/div[2]/div/div[2]/button[2]/span
${departments_table_selection}   xpath=/html/body/div[1]/div/div[2]/div/main/div/div[2]/div[2]/div/div[1]/div/div[1]/div/div[2]/div/div[2]/div[1]/div[2]/div[1]/div/div[3]/div/div/div/div[2]/span[3]/span
${Continue_button_3}             xpath=/html/body/div[1]/div/div[2]/div/main/div/div[2]/div[2]/div/div[1]/div/div[1]/div/div[2]/div/div[2]/div[2]/button
${AI_button__genrate}            xpath=/html/body/div[1]/div/div[2]/div/main/div/div[2]/div[2]/div/div[1]/div/div[1]/div/div[2]/div/div[2]/div[1]/div[2]/div[2]/form/div/div/div[2]/div/div/button
${skipe_button}                  css=.anticon-close > svg:nth-child(1) > path:nth-child(1)
${datasets_button}               xpath=//div[@id='rc-tabs-7-tab-data-sets']
${Datasets}                      id=rc-tabs-1-tab-data-sets
${Dataset_Deleting_bt}           css=.ant-tooltip-open > svg
${Dataset_Cfr_bt_del}            css=.ant-btn-link > span
${Datasource_Deleting_bt}        css=.ant-tooltip-open path
${Datasource_Cfr_Bt_del}         css=.ant-tooltip-open path

# OG Chat
${Chat_URl}            https://workspace-preprod.onegate.ai/chat
${Chat_input}          id=input
${Dataset_connection}  id=dataset_id
${dataset_name}        xpath=/html/body/div[2]/div/div/div[2]/div/div/div/div[2]/div/div/div
${Chat_button_send}    xpath=/html/body/div/div/div[2]/div/main/div/div[2]/div/form/div[2]/div[2]/div[2]/div/div/div/div/button/span[2]
${Send_button}         css=.ant-btn-primary:nth-child(1) > .ant-btn-icon
${Add_Dashboard_button}    css=.sc-lfhmhd > span:nth-child(2)
${SUBMIT_DASHBOARD_BUTTON}  css=.ok-button > span
${Add_Page_button}     css=.sc-dZKHcv > span:nth-child(2)
${SUBMIT_PAGE_BUTTON}  xpath=//button[@type='submit']
${ADD_FOR_ME_BUTTON}   css=.ant-btn-default:nth-child(1) > span
${GO_TO_DASHBOARD_BUTTON}  xpath=//button[contains(.,'Go to Dashboard')]


# Add Dashboard Page
${ADD_DASHBOARD_URL}       https://workspace-preprod.onegate.ai/dashboard
${NAME_DASHBOARD_FIELD}     id=name
${DESCRIPTION_DASHBOARD_FIELD}       id=description
${SUBMIT_BUTTON_DASHBOARD}      xpath=//button[@class='create-dashboard']

# Add Page Dashboard
${NAME_PAGE_FIELD}     id=name
${TYPE_PAGE_FIELD}     id=type
${TYPE_PAGE}           css=.ant-select-item-option-active > .ant-select-item-option-content
${SUBMIT_BUTTON_DASHBOARD_PAGE}     xpath=//*[@id="dashboard-modal"]/div[2]/div[2]/div/div[1]/div/div[2]/button[2]

# Add Workspace Page
${ADD_Workspace_URL}       https://workspace-preprod.onegate.ai/workspace
${NAME_Workspace_FIELD}     id=name
${SUBMIT_BUTTON_Workspace}      xpath=//*[@id="workspace-modal"]/div[3]/div[2]/div/div[1]/div/div[1]/div/form/div[2]/button

# Add User To Workspace Page
${ADD_USERWORKSPACE_URL}       https://workspace-preprod.onegate.ai/workspace/user-management
${FIRST_NAME_FIELD_WORKSPACE}          id=firstName
${LAST_NAME_FIELD_WORKSPACE}           id=lastName
${EMAIL_FIELD_WORKSPACE}               id=email
${PERMISSIONS_FIELD_WORKSPACE}         xpath=//*[@id="usermanagement-modal"]/div[3]/div[2]/div/div[1]/div/div[1]/div/form/div[3]/div/div/div[2]/div/div/div  
${SUBMIT_BUTTON_INVITE_USER}           xpath=/html/body/div/div/div[2]/div/main/div/div/div[3]/div[2]/div/div[1]/div/div[1]/div/form/div[4]/button

# Test Data
${ADMIN_USER}         admin@admin.com
${ADMIN_PASS}         McpEnergy@2024
${NEW_USER_FRIST_NAME}       bhaf
${NEW_USER_LAST_NAME}    youssef
${NEW_USER_EMAIL}     nio3cool12@swagpapa.com
${NEW_USER_PASSWORD}      Admin@123!
${NEW_USER_CONFIRM_PASSWORD}  Admin@123! 
${NEW_NAME_DASHBOAD}       Dashboard1
${NEW_DESCRIPTION_DASHBOARD}     This is a dashboard Test 
${NEW_PAGE_NAME}        Page1
${NEW_WORKSPACE_NAME}        New-Workspace
${Display_name}      Postgressql          
${Host}              aws-0-us-east-2.pooler.supabase.com      
${Schema_name}       company_test     
${Password}          9W4p_2-ig4xw9k?      
${Name}              postgres      
${Port}              6543     
${Username}          postgres.jurkpdkeybprgdfurftu
${dataset_name}      Postgresqol_1