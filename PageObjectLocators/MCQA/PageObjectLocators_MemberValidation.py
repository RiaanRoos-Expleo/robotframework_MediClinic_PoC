manage_user="xpath:(//div[contains(@class,'text-center multi-menu pt-2')])[1]"
registered_user="xpath:(//div[contains(@class,'content')])[8]"
select_user="xpath:(//mat-row[contains(@role,'row')]//mat-cell)[1]"
validateBtn="xpath://button[normalize-space()='Validate member']"
idNumberField="xpath:(//div[contains(@class,'mb-1 me-4')]//input)[8]"
searchBtn="xpath://button[normalize-space()='Search']"
medicalAidTable="xpath://h3[@class='regSubHeading pt-3']"
memberID="xpath://mat-cell[normalize-space()='7206305398089']" #Assert that the Member ID is the same
medAidNo="xpath://mat-cell[normalize-space()='02000927497']"

#Dependants
dependantsTable="xpath://h3[normalize-space()='Dependant Details']"
medAidNoForDependant="xpath://mat-row[4]//mat-cell[1]"
confirmAction="xpath://div[contains(@class,'mat-dialog-actions d-flex justify-content-end')]//button//span[contains(text(),'Yes')]"
medAidNo_Validate="xpath://div[contains(text(),'02000927497')]"

