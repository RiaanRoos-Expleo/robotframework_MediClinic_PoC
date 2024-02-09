*** Settings ***
Library             SeleniumLibrary
Resource    PageObjectAcrions_CaseLog.resource

*** Keywords ***
###########################################################################################
# Actions performed On elements On the page
###########################################################################################
Login with valid credentials
    Click Element       ${ngc_mcqa_112_UsernameTextbox}
    Input Text          ${ngc_mcqa_112_UsernameTextbox}                 ${login_username}
    Click Element       ${ngc_mcqa_112_nextBtn}

    Sleep    4s

    Click Element       ${ngc_mcqa_112_PwdTextbox}
    Input Text          ${ngc_mcqa_112_PwdTextbox}                 ${login_pwd}
    Click Element       ${ngc_mcqa_112_nextBtn}

    Wait Until Element Is Visible    ${ngc_mcqa_112_noBtn}    3s
    Click Element        ${ngc_mcqa_112_noBtn}

Click Log out
    Click Element       ${mqca_log_out}
    

    Sleep    4s

    Click Element       ${mcqa_logoutBtn}

