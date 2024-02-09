*** Settings ***
Library             SeleniumLibrary

*** Keywords ***
###########################################################################################
# Actions performed On elements On the page
###########################################################################################

Handle Avaya Popup
    
    Wait Until Element Is Visible    ${avaya_loginButton}

    Sleep    5s
    Click Element    ${avaya_loginButton}

    Wait Until Element Is Visible    ${avaya_usernameTextBox}
    Click Element    ${avaya_usernameTextBox}
    Input Text    ${avaya_usernameTextBox}    ${avaya_username}

    Click Element    ${avaya_passwordTextbox}
    Input Text    ${avaya_passwordTextbox}    ${avaya_pwd}
    Click Element     ${avaya_submitBtn}
    Switch Window    main

Popup handle
    Wait Until Element Is Visible    ${case_log_confirm_btn}
    Click Element    ${case_log_confirm_btn}
    Switch Window    main
    
Click Side Menu
    Wait Until Element Is Visible     ${case_log_option}    3s
    Sleep    3s
    Click Element      ${case_log_option}
    Sleep    4s
    Click Element       ${case_log_confirm_action_modal}
    Popup handle
