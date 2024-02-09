case_log_option="(//div[contains(@class,'content')])[5]"
case_log_confirm_action_modal="//div//p[contains(text(),'Are you sure want to proceed to open a new manual case?')]"
case_log_confirm_btn= "//button//span[contains(text(),'Yes')]"
mcqa_caselog_select_client="id:mat-select-8"
mcqa_selected_client_Vodacom="xpath://div[contains(@role,'listbox')]//span[contains(text(),'Vodacom')]"
mcqa_selected_client_Rain="xpath://div[contains(@role,'listbox')]//span[contains(text(),'Rain')]"
mcqa_selected_client_CellC="xpath://div[contains(@role,'listbox')]//span[contains(text(),'CellC')]"

# Caller Information

mcqa_tel_number="xpath://input[@id='phone']"
mcqa_tel_icon="xpath:(//span[contains(@class,'pe-1')]//img)[1]"
mcqa_consent_toggle="xpath://input[@id='Consent']"
mcqa_confirm_consent="xpath:(//button[@class='mat-focus-indicator btn btn-submit px-5 mat-raised-button mat-button-base'])[1]"
mcqa_incident_location="xpath://textarea[@placeholder='Search Location']"
mcqa_caller_name="xpath://div[@class='p-1- ng-star-inserted']//input[@id='caller_First_Name']"
mcqa_caller__last_name="xpath://div[@class='p-1- ng-star-inserted']//input[@id='caller_Last_Name']"

# Case Details
mcqa_whats_wrong_mechanism="xpath://textarea[@id='WhatsWrong']"
mcqa_number_of_injured="xpath:(//mat-form-field//div//mat-select[contains(@role,'combobox')])[1]"
mcqa_number_of_injured_unknown="xpath://div[contains(@role,'listbox')]//span[contains(text(),' Unknown')]"
mcqa_medical="xpath://label[@for='isChecked0-input']//span[@class='mat-checkbox-inner-container mat-checkbox-inner-container-no-side-margin']"
# mcqa_patientName="xpath://div[@class='ng-star-inserted']//input[@id='caller_First_Name']"
# mcqa_patientName="xpath://div[@class='ng-star-inserted']//input[@id='caller_Last_Name']"
mcqa_patientAgeCategory="xpath:(//mat-form-field//div//mat-select[contains(@role,'combobox')])[2]"
mcqa_patientAgeCategoryAsYears="xpath://div[contains(@role,'listbox')]//mat-option//span[contains(text(),' Years')]"
mcqa_patientAge="xpath://input[@id='age']"
mcqa_patientGender="xpath:(//mat-form-field//div//mat-select[contains(@role,'combobox')])[3]"
mcqa_patientGenderAsMale="xpath://div[contains(@role,'listbox')]//mat-option//span[contains(text(),'Male')]"
mcqa_clinicalSubType="xpath:(//div[contains(@class,'input-container')])[1]"
mcqa_clinicalSuggested="xpath://div[contains(@id,'suggestions')]//div//a[contains(text(),'Back Pain')]"
mcqa_contact_center="xpath://div[@class='col-md-12 row position-relative']//div[1]//span[1]//span[3]"
mcqa_conferrence_option_radioBtn="xpath://div[contains(@class,'pt-2')]//span[contains(text(),'Conference')]"
mcqa_conferrence_option_btn="xpath://img[@src='../../assets/Connect.svg']"
mcqa_conferrenc_established_btn="xpath://div[contains(text(),'Complete Conference')]"
mcqa_close="xpath://button[@type='submit']"

mcqa_end_angent_call ="xpath://img[@src='../../assets/end-call.svg']"

mqca_log_out="xpath://img[@src='/assets/down-arrow.svg']"
mcqa_logoutBtn="xpath:(//button[@role='menuitem'])[3]"


