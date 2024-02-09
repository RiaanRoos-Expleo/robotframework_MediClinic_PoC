*** Settings ***
Library             SeleniumLibrary


*** Keywords ***
###########################################################################################
# Actions performed On elements On the page
##################################################################

Vodacom Case Log
    Handle Avaya Popup
    Click Side Menu 
    Select A Vodacom Client
    Intiate a call
    Enter Caller Details
    Initiate Confference Caller
Rain Case Log
    Handle Avaya Popup
    Click Side Menu 
    Select A Client
    Intiate a call
    Enter Caller Details
    Initiate Confference Caller