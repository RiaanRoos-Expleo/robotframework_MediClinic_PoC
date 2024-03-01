*** Settings ***


*** Keywords ***
###########################################################################################
# Actions performed On elements On the page
##################################################################

Vodacom Case Log
    Handle Avaya Popup
    Click Side Menu 
    Grab Case ID
    Select A Vodacom Client
    Sleep    5s
    Intiate a call
    Enter Caller Details
    Initiate Confference Caller
    Agent Ends call
    Follow-Up Case
    Close Browser
   
Rain Case Log
    Handle Avaya Popup
    Click Side Menu 
    Select A Rain Client
    Intiate a call
    Enter Caller Details
    Initiate Confference Caller

    

