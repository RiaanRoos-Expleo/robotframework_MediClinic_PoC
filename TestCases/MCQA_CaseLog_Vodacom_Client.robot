*** Settings ***
Resource        ${EXECDIR}/Resources/presets.resource
Test Setup    Launch Application Under Test

Documentation    User Story: Manual Case Log
...              ...
...              ..

*** Test Cases ***
Manual Case Logginig With Vodacom Client   
    [Tags]      CaseLogManagement
    Login with valid credentials
    Vodacom Case Log
    


