*** Settings ***
Documentation    This Page Object file contains all the action that can be performed On this page.
Resource    PageObjectActions_Login.resource

*** Keywords ***
###########################################################################################
# Actions performed On elements On the page
###########################################################################################

Select Registered User Side-Menu
    Sleep    6s
    Wait Until Element Is Visible    ${manage_user}    10s
    Click Element    ${manage_user}

    Sleep    2s
    Wait Until Element Is Visible    ${registered_user}    5s
    Click Element    ${registered_user}
    Capture Page Screenshot


Select A Member To Validate    
    Wait Until Element Is Visible    ${select_user}    5s
    Click Element    ${select_user}
    Sleep    4s
    Capture Page Screenshot

    Scroll Element Into View    ${validateBtn}
    Sleep    3s
    Wait Until Element Is Visible    ${validateBtn}    4s
    Click Element    ${validateBtn}
    
    Wait Until Element Is Visible    ${idNumberField}
    Press Keys    ${idNumberField}    ${idNumber}
    Capture Page Screenshot
    Sleep    30s
    Scroll Element Into View    ${searchBtn}
    Set Focus To Element    ${searchBtn}
    Click Element    ${searchBtn}
    Capture Page Screenshot

Select Medical Aid Holder
    Sleep    12s
    Scroll Element Into View    ${medicalAidTable}   
    Sleep    2s
    Element Should Contain    ${memberID}    ${idNumber}
    Wait Until Element Is Visible       ${medAidNo}
    Click Element    ${medAidNo}
    Sleep    2s
Validate Dependant
    Scroll Element Into View    ${dependantsTable}
    Capture Page Screenshot
    Wait Until Element IS Visible    ${medAidNoForDependant}    3s
    Click Element    ${medAidNoForDependant}
    Sleep    3s
    Capture Page Screenshot
    Wait Until Element Is Visible    ${confirmAction}    3s
    Click Element    ${confirmAction}
    Sleep    8s
    Scroll Element Into View    ${medAidNo_Validate}
    Set Focus To Element    ${medAidNo_Validate}
    ${medNo}=    Get Text    ${medAidNo_Validate}
    Log To Console    ${medNo}
    Capture Page Screenshot
