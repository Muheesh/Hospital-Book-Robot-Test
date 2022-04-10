*** Settings ***
Library  SeleniumLibrary
*** Variables ***
${web_url}  http://127.0.0.1:5000
*** Test Cases ***
Admin Login Test
    [Documentation]  This test is for admin login
    [Tags]  admin
    Open Browser  ${web_url}  chrome
    Maximize Browser Window
    sleep  1s
    Login Admin
    sleep  1s
    Login Pass
    sleep  1s
    Click Element  xpath=//html/body/div/div/div/form/table/tbody/tr[3]/td[2]/button
    sleep  1s

Admin Add Patient
    [Documentation]  This test is to add patient
    [Tags]  admin
    Add Patient Name
    sleep  1s
    Add Patient Address
    sleep  1s
    Add Patient Age
    sleep  1s
    Add Patient Dateof Birth
    sleep  1s
    Add Patient Number
    sleep  1s
    Add Patient Place
    sleep  1s
    Add Patient Pincode
    sleep  1s
    Click Element  xpath=//html/body/div/div/div/form/table/tbody/tr[8]/td[2]/button
    sleep  1s
Admin View Patient
    [Documentation]  This test is to view patient
    [Tags]  admin
    Click Element  xpath=//html/body/nav/div/div/ul/li[6]/a
    sleep  1s

Admin Search Patient
    [Documentation]  This test is to search patient
    [Tags]  admin
    Click Element  xpath=//html/body/nav/div/div/ul/li[3]/a
    sleep  1s
    Search Number
Update Patient
    [Documentation]  This is to check updation of patients
    [Tags]  admin
    Click Element  xpath=//html/body/nav/div/div/ul/li[5]/a
    sleep  1s
    Update Number
    sleep  1s
    Click Element  xpath=//html/body/div/div/div/form/table/tbody/tr[2]/td[2]/button
    sleep  1s
    Up Patient Name
    sleep  1s
    Up Patient Age
    sleep  1s
    Up Patient Address
    sleep  1s
    Up Patient Dateof Birth
    sleep  1s
    Up Patient Place
    sleep  1s
    Up Patient Pincode
    sleep  1s
    Click Element  xpath=//html/body/div/div/div/form/table/tbody/tr[7]/td[2]/button
    sleep  1s

Delete Patient
    [Documentation]  This test is to delete patient
    [Tags]  admin
    Click Element  xpath=//html/body/nav/div/div/ul/li[4]/a
    sleep  1s
    Search Number
    sleep  1s
    Click Element  xpath=//html/body/div/div/div/form/table/tbody/tr[2]/td[2]/button
    sleep  1s
    Close Browser

*** Keywords ***
Login Admin
    Input Text  name:urname  admin
Login Pass
    Input Text  name:pass  1234
Add Patient Name
    Input Text  name:name  Muheesh
Add Patient Number
    Input Text  name:number  12345678
Add Patient Age
    Input Text  name:age  20
Add Patient Address
    Input Text  name:address  Salem
Add Patient Dateof Birth
    Input Text  name:dob  2022-04-09
Add Patient Place
    Input Text  name:place  TN
Add Patient Pincode
    Input Text  name:pincode  636003
Search Number
    Input Text  name:number  12345678
Update Number
    Input Text  name:unumber  12345678
Up Patient Name
    Input Text  name:newname  Ragul
Up Patient Age
    Input Text  name:newage  25
Up Patient Address
    Input Text  name:newaddress  Chennai
Up Patient Dateof Birth
    Input Text  name:newdob  2022-04-08
Up Patient Place
    Input Text  name:newplace  Tamil nadu
Up Patient Pincode
    Input Text  name:newpincode  125478




