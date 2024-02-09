*** Settings ***
# Some description for this resource that describes it's function.
Documentation       Keywords to import all the resources required for the test suite

Library             ${EXECDIR}/Resources/FileActions.py
Library             ${EXECDIR}/Resources/ListResources.py
Library             ${EXECDIR}/Resources/WebDriverManagerWrapper.py
Library             SeleniumLibrary
# Library           Process

*** Keywords ***
Launch Application Under Test
    [Documentation]    Opens the application under test, based On the Testing Environment
    Import Library    ${EXECDIR}/Resources/CreateUniqueNumbers.py


    #Test Data
    ${env_testdata_exists} =    File Exists    ${EXECDIR}/TestData/${ENVIRON}/testdata.py
    IF    ${env_testdata_exists} is True
        Import Variables    ${EXECDIR}/TestData/${ENVIRON}/testdata.py
    END

    #Page Locators
    # Import Page Locators specific to an Testing Environment
    @{FilesEnvrionmentPL} =    Return Variables List    ${CURDIR}/../PageObjectLocators/${ENVIRON}/
    FOR    ${filesenvironmentPL}    IN    @{FilesEnvrionmentPL}
        Import Variables    ${EXECDIR}/PageObjectLocators/${ENVIRON}/${filesenvironmentPL}.py
    END

    #Page Object Actions
    # Import Page Object Actions specific to an Testing Environment
    @{FilesEnvironmentPO} =    Return Resource List    ${CURDIR}/../PageObjectActions/${ENVIRON}/
    FOR    ${filesenvironmentPO}    IN    @{FilesEnvironmentPO}
        Import Resource    ${EXECDIR}/PageObjectActions/${ENVIRON}/${filesenvironmentPO}.resource
    END

    #Page Object Step Definitions
    #Import Page Object Step Definitions specific to an Testing Environment
    @{FilesEnvironmentStepDefs} =    Return Resource List    ${CURDIR}/../PageObjectStepDefinitions/${ENVIRON}/
    FOR    ${filesEnvironmentStepDefs}    IN    @{FilesEnvironmentStepDefs}
        Import Resource    ${EXECDIR}/PageObjectStepDefinitions/${ENVIRON}/${filesEnvironmentStepDefs}.resource
    END

    #
    Open Browser      ${url}      ${browser}
    Maximize Browser Window
    Sleep  3s

Log out
    Logoff 
 
 