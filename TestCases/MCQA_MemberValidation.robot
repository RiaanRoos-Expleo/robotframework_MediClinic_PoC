*** Settings ***
Resource        ${EXECDIR}/Resources/presets.resource
Test Setup    Launch Application Under Test

Documentation    User Story: Member Validation
...              ...
...              ..

*** Test Cases ***
Validate Member  
    [Tags]      validateMember    Regression
    Login with valid credentials
    Member Validation
    


