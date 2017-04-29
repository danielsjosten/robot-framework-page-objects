*** Setting ***
Library                                            OperatingSystem
Library                                            Selenium2Library
Library                                            String


*** Variables ***
${client_pg_label}                                 Create New Client

${btn_create_new_client}                           xpath=//*[@id="j_idt49"]/a[1]


#Form
${client_form_name}                                id=name
${client_form_email}                               id=email
${client_form_gender_male}                         id=gender:0
${client_form_socialsecuritynr}                    id=socialSecurityNumber
${btn_client_form_save}                            xpath=//a[text()='Save']
${btn_client_delete}                               xpath=//a[text()='Delete']


${client_was_created}                              Client was successfully created.
${client_was_deleted}                              Client was successfully deleted.

${name_in_list}=                                   JOÃO PAULO



*** Keywords ***

click create new client
                                                   Wait Until Page Contains                         ${client_pg_label}
                                                   Click Element                                    ${btn_create_new_client}

Fill in credentials for client and save
                                                   Wait Until Page Contains                         ${client_pg_label}
                                                   #Generate random name
                                                   ${client_name} =                                 Generate Random String             10                                          [LOWER]
                                                   Input Text                                       ${client_form_name}                ${client_name}
                                                   #Generate random email based on previous name
                                                   ${client_email}=                                 Catenate                           SEPARATOR=                                  ${client_name}                         @email.com
                                                   Input Text                                       ${client_form_email}               ${client_email}
                                                   Select Checkbox                                  ${client_form_gender_male}
                                                   #Generate random number
                                                   ${ssn}=                                          Generate Random String             7                                           [NUMBERS]
                                                   Input Text                                       ${client_form_socialsecuritynr}    ${ssn}
                                                   Click Element                                    ${btn_client_form_save}
                                                   Wait Until Page Contains                         ${client_was_created}

 Delete client that was created
                                                   Click Element                                    ${btn_client_delete}
                                                   Wait Until Page Contains                         ${client_was_deleted}





#The test below is seperate from the ones above

Check if client is in clientlist

                                                   ${Ele}=                                          Get Text                           xpath=//*[@id="j_idt49"]/table/tbody
                                                   Log To Console                                   \n${Ele}
                                                   Should Contain                                   ${Ele}                             ${name_in_list}                             msg=No client with that exact name!    values=False






