*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${web_url}  http://127.0.0.1:5000

*** Test Cases ***
Admin Login
    [Documentation]  This Test Is for admin login
    [Tags]  admin
    Open Browser  ${web_url}  chrome
    maximize browser window
    sleep  1s
    Login Admin
    sleep  1s
    Login Pass
    sleep  1s
    Click Element  xpath=//html/body/div[2]/div/div/form/table/tbody/tr[3]/td[2]/button
    sleep  1s
Add Book
    [Documentation]  This is for adding book
    [Tags]  admin
    Book Name
    sleep  1s
    Book author
    sleep  1s
    Book Category
    sleep  1s
    Book Price
    sleep  1s
    Book Publisher
    sleep  1s
    Click Element  xpath=//html/body/div[3]/div/div/form/table/tbody/tr[6]/td[2]/button
    sleep  1s

View Book Card
    [Documentation]  This is for viewing book
    [Tags]  admin
    Click Element  xpath=//html/body/nav[2]/div/div/ul/li[2]/a
    sleep  1s

Search Book
    [Documentation]  This is for admin search
    [Tags]  admin
    Click Element  xpath=//html/body/nav[2]/div/div/ul/li[3]/a
    sleep  1s
    Search Book
    sleep  1s
    Click Element  xpath=//html/body/div[2]/div/div/form/table/tbody/tr[2]/td[2]/button
    sleep  1s

Edit Book
    [Documentation]  This is for editing book
    [Tags]  admin
    Click Element  xpath=//html/body/nav[2]/div/div/ul/li[4]/a
    sleep  1s
    Edit Book
    sleep  1s
    Click Element  xpath=//html/body/div[2]/div/div/form/table/tbody/tr[2]/td[2]/button
    sleep  1s
    Update Book Name
    sleep  1s
    Update Author
    sleep  1s
    Update Category
    sleep  1s
    Update Price
    sleep  1s
    Update Publisher
    sleep  1s
    Click Element  xpath=//html/body/div[2]/div/div/form/table/tbody/tr[6]/td[2]/button
    sleep  1s

Delete Book
    [Documentation]  This is for deleting book
    [Tags]  admin
    Click Element  xpath=//html/body/nav[2]/div/div/ul/li[5]/a
    sleep  1s
    Delete Name
    sleep  1s
    Click Element  xpath=//html/body/div[2]/div/div/form/table/tbody/tr[2]/td[2]/button
    sleep  1s
Add Book Again
    [Documentation]  This is for adding book
    [Tags]  admin
    Click Element  xpath=//html/body/nav[2]/div/div/ul/li[1]/a
    sleep  1s
    Book Name Again
    sleep  1s
    Book author Again
    sleep  1s
    Book Category Again
    sleep  1s
    Book Price Again
    sleep  1s
    Book Publisher Again
    sleep  1s
    Click Element  xpath=//html/body/div[3]/div/div/form/table/tbody/tr[6]/td[2]/button
    sleep  1s
Logout
    [Documentation]  This is for logout
    [Tags]  admin
    Click Element  xpath=//html/body/nav[2]/div/div/ul/li[6]/a
    sleep  1s

User Register
    [Documentation]  This is for User Registration
    [Tags]  user
    Click Element  xpath=//html/body/div[2]/div/div/form/table/tbody/tr[4]/td[2]/a
    sleep  1s
    Click Element  xpath=//html/body/div[2]/div/div/form/table/tbody/tr[4]/td[2]/a
    sleep  1s
    Register User Name
    sleep  1s
    User Address
    sleep  1s
    User Email
    sleep  1s
    User number
    sleep  1s
    User Password
    sleep  1s
    Click Element  xpath=//html/body/div[2]/div/div/form/table/tbody/tr[6]/td[2]/button
    sleep  1s

User Login
    [Documentation]  This is for user login
    [Tags]  user
    User Login
    sleep  1s
    User Login Password
    sleep  1s
    Click Element  xpath=//html/body/div[2]/div/div/form/table/tbody/tr[3]/td[2]/button
    sleep  1s

User View Book
    [Documentation]  This is for user view
    [Tags]  user
    Click Element  xpath=//html/body/nav[2]/div/div/ul/li[1]/a
    sleep  1s

User Search
    [Documentation]  This is for user search
    [Tags]  user
    Click Element  xpath=//html/body/nav[2]/div/div/ul/li[2]/a
    sleep  1s
    Search User Book
    sleep  1s
    Click Element  xpath=//html/body/div[2]/div/div/form/table/tbody/tr[2]/td[2]/button
    sleep  1s

User Logout
    [Documentation]  This is for user logout
    [Tags]  user
    Click Element  xpath=//html/body/nav[2]/div/div/ul/li[3]/a
    sleep  1s
    Close Browser


*** Keywords ***
Login Admin
    Input Text  name:uname  admin
Login Pass
    Input Text  name:pass  9875
Book Name
    Input Text  name:bname  Harry Potter
Book author
    Input Text  name:author  Rowling
Book Category
    Input Text   name:category  Fiction
Book Price
    Input Text  name:price  500
Book Publisher
    Input Text  name:publisher  penguin
Search Book
    Input Text  name:bname  Harry Potter
Edit Book
    Input Text  name:bname  Harry Potter
Update Book Name
    Input Text  name:bname  Rich Dad Poor Dad
Update Author
    Input Text  name:author  Robert
Update Category
    Input Text   name:category  Finance
Update Price
    Input Text  name:price  400
Update Publisher
    Input Text  name:publisher  wb
Delete Name
    Input Text  name:bname  Rich Dad Poor Dad
Register User Name
    Input Text  name:name  muheesh
User Address
    Input Text  name:add  Salem
User Email
    Input Text  name:email  muheeshas@gmail.com
User number
    Input Text  name:phone  9443208693
User Password
    Input Text  name:pass  abcd
User Login
    Input Text  name:email  muheeshas@gmail.com
User Login Password
    Input Text  name:pass  abcd
Search User Book
    Input Text  name:bname  Alchemist
Book Name Again
    Input Text  name:bname  Alchemist
Book author Again
    Input Text  name:author  Paulo
Book Category Again
    Input Text   name:category  Fantasy
Book Price Again
    Input Text  name:price  800
Book Publisher Again
    Input Text  name:publisher  bookworm




