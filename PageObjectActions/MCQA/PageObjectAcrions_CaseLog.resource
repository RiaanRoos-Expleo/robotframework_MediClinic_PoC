*** Settings ***
Library             SeleniumLibrary
Resource    PageObjectActions_Login.resource

*** Keywords ***
###########################################################################################
# Actions performed On elements On the page
###########################################################################################
Select A Vodacom Client
    Wait Until Element Is Enabled    ${mcqa_selected_client_Vodacom}     6s
    Sleep    4s
    Click Element    ${mcqa_caselog_select_client}
    Click Element    ${mcqa_selected_client}
Intiate a call
    Wait Until Element Is Enabled    ${mcqa_tel_number}    6s
    Sleep    3s
    Click Element           ${mcqa_tel_number}
    Input Text              ${mcqa_tel_number}         ${mcqa_caller_number}
    Wait Until Element Is Enabled    ${mcqa_consent_toggle}    3s
    Click Element            ${mcqa_consent_toggle}

    Click Element           ${mcqa_confirm_consent}

    Wait Until Element Is Enabled    ${mcqa_tel_icon}    4s

    Sleep    4s

    Click Element            ${mcqa_tel_icon} 

Enter Caller Details
    Sleep    11s
    ${caller}=        CreateUniqueNumbers.Generate Sa Phone Number 
    Log To Console    ${caller}
    Click Element           ${mcqa_caller_name}
    Input Text              ${mcqa_caller_name}         ${callerName}
   
    Click Element           ${mcqa_caller_name}
    Click Element           ${mcqa_caller_name}
  
    Input Text              ${mcqa_caller__last_name}         ${callerSurname}
    Input Text              ${mcqa_caller__last_name}         ${callerSurname}

    Wait Until Element Is Visible    ${mcqa_whats_wrong_mechanism}    
    Click Element    ${mcqa_whats_wrong_mechanism}
    Input Text    ${mcqa_whats_wrong_mechanism}    ${mcqa_whats_wrong}
    Sleep    3s
    Wait Until Element Is Visible    ${mcqa_number_of_injured}    3s
    Click Element    ${mcqa_number_of_injured}
    Wait Until Element Is Visible        ${mcqa_number_of_injured_unknown}     4s
    Click Element    ${mcqa_number_of_injured_unknown}
    Wait Until Element IS Visible    ${mcqa_medical}
    Click Element    ${mcqa_medical}

    Sleep    4s
    Click Element    ${mcqa_patientAgeCategory}
    Click Element    ${mcqa_patientAgeCategoryAsYears}
    Sleep    4s
    Press Keys    ${mcqa_patientAge}    42
   

    Sleep    4s
    Click Element    ${mcqa_patientGender}
    Click Element    ${mcqa_patientGenderAsMale}

    Wait Until Element Is Visible    ${mcqa_clinicalSubType}
    Click Element    ${mcqa_clinicalSubType}

    Wait Until Element Is Visible    ${mcqa_clinicalSuggested}
    Click Element    ${mcqa_clinicalSuggested}

Initiate Confference Caller
    Sleep    4s
    Scroll Element Into View    ${mcqa_contact_center}
   
    Wait Until Element Is Visible    ${mcqa_contact_center}    4s
    Sleep    4s
    Click Element    ${mcqa_contact_center}
    Sleep    5s
    Wait Until Element Is Visible    ${mcqa_conferrence_option_radioBtn}
    Sleep    4s
    Click Element    ${mcqa_conferrence_option_radioBtn}

    Wait Until Element Is Visible    ${mcqa_conferrence_option_btn}
    Sleep    4s
    Click Element    ${mcqa_conferrence_option_btn}

    Wait Until Element Is Visible    ${mcqa_conferrenc_established_btn}
    Sleep    4s
    Click Element    ${mcqa_conferrenc_established_btn}

