*** Settings ***
Documentation    This Page Object file contains all the action that can be performed On this page.

Library    String
Library    OperatingSystem
Library    Process
Resource    PageObjectActions_Login.resource

*** Keywords ***
###########################################################################################
# Actions performed On elements On the page
###########################################################################################
Select A Vodacom Client
    Wait Until Element Is Enabled    ${mcqa_caselog_select_client}     6s
    Sleep    4s
    Click Element    ${mcqa_caselog_select_client}
    Click Element    ${mcqa_selected_client}
Select A Rain Client
    Wait Until Element Is Enabled    ${mcqa_caselog_select_client}     6s
    Sleep    4s
    Click Element    ${mcqa_caselog_select_client}
    Click Element    ${mcqa_selected_client_Rain}
Select A Cell Client
    Sleep    5s
    Wait Until Element Is Enabled    ${mcqa_caselog_select_client}     6s
    Sleep    4s
    Click Element    ${mcqa_caselog_select_client}
    Click Element    ${mcqa_selected_client_CellC}
Intiate a call
    Wait Until Element Is Enabled    ${mcqa_tel_number}    6s
    Sleep    3s
    Click Element           ${mcqa_tel_number}
    Input Text              ${mcqa_tel_number}         ${mcqa_caller_number}
    Wait Until Element Is Enabled    ${mcqa_consent_toggle}    3s
    Click Element            ${mcqa_consent_toggle}

    Click Element           ${mcqa_confirm_consent}


    Wait Until Element Is Enabled    ${mcqa_tel_icon}    10s

    Sleep    10s
    Click Element            ${mcqa_tel_icon} 
    Sleep    4s
    Wait Until Element Is Visible    ${mcqa_search_location}    4s
    Click Element    ${mcqa_search_location}

    Input Text   ${mcqa_search_location}     ${incident_location}
    Sleep    4s
    Click Element    ${mcqa_incident_location}    

Enter Caller Details
    Sleep    4s
    
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
    Sleep    4s
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
    Capture Page Screenshot
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

    Wait Until Element Is Visible    ${mcqa_conferrence_option_btn}    7s
    Sleep    7s
    Click Element    ${mcqa_conferrence_option_btn}

    Wait Until Element Is Visible    ${mcqa_conferrenc_established_btn}    30s
    
    Click Element    ${mcqa_conferrenc_established_btn}

Agent Ends call
    Wait Until Element Is Visible    ${mcqa_close}     4s
    Sleep    6s
    Click Element    ${mcqa_close}

    Sleep    3s
    Wait Until Element Is Visible    ${mcqa_submit_case}
    
    Click Element    ${mcqa_submit_case}
   
    Capture Page Screenshot


Grab Case ID
    Sleep    6s
    Wait Until Element Is Visible    ${case_id}
    Capture Page Screenshot    
    ${case_number}=    Get Text    ${case_id}
    ${case_number}=    Get Substring    ${case_number}    9    -21
    Set Global Variable    ${case_number}
    Log To Console    Case Number is ${case_number}
Search Case
    Wait Until Element Is Visible    ${followUpCaseTab}    6s
    Click Element    ${followUpCaseTab}
    Wait Until Element Is Enabled    ${mcqa_caselog_select_client}     6s
    Sleep    4s
    Click Element    ${mcqa_caselog_select_client}
    Click Element    ${mcqa_selected_client}

    Sleep    3s
    Click Element    ${search_case_id_field}
    Sleep    5s
    Press Keys    ${search_case_id_field}    ${case_number}

    Wait Until Element Is Visible    ${select_case_id}    3s
    Click Element    ${select_case_id}
    Capture Page Screenshot 
    Sleep    10s
       
    
    Wait Until Element Is Visible    ${mcqa_submit_case}    6s
    Click Element    ${mcqa_submit_case}
    Sleep    2s
    Element Should Contain    ${ClosedCase}    ${mcqa_close_case}
    Capture Page Screenshot

Follow Up Cases Searched By Case ID
    Sleep    7s
    Wait Until Element Is Visible    ${followUpBox}    5s
    Click Element    ${followUpBox}

    Wait Until Element Is Visible    ${mcqa_caselog_select_client}    5s
    Click Element    ${mcqa_caselog_select_client}
   

Follow-Up Case
    Scroll Element Into View    ${followUpBox}
    Capture Page Screenshot
    Sleep    2s
    
    Element Should Contain    ${followUpCase}    ${mcqa_follow_up_case}
    ${followUpCaseStatus}=    Get Text    ${followUpCase}
    ${caseFollow}=    Get Text    ${followUpCase}

    Set Global Variable    ${followUpCaseStatus}
    Log To Console    Case status is ${followUpCaseStatus}
    Capture Page Screenshot   

    Run Keyword If    '${followUpCaseStatus}' == 'Case Is Set For Follow-Up.'    Click Element    ${case_log_option_Worklist}
    
    Sleep    7s
    Run Keyword If    '${caseFollow}' == 'Cases For Follow Up (0)'    Follow Up Cases Searched By Case ID
    
    Capture Page Screenshot
    Search Case
   
      