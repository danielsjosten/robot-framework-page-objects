*** Setting ***



*** Variables ***
${client_pg_label}          Create New Client

${btn_create_new_client}    xpath=//a[@class='dropdown-toggle']


#Form
${left_menu_dashboard}      xpath=//*[@id="side-menu"]/li[2]/a
${left_menu_bedroom}        xpath=//*[@id="side-menu"]/li[3]/a
${left_menu_bill}           xpath=//*[@id="side-menu"]/li[4]/a
${left_menu_client}         xpath=//*[@id="side-menu"]/li[5]/a
${left_menu_reservation}    xpath=//*[@id="side-menu"]/li[6]/a
${left_menu_user}           xpath=//*[@id="side-menu"]/li[7]/a




*** Keywords ***
click create new client
                            Wait Until Page Contains               ${client_pg_label}
                            Click Element                          xpath=//*[@id="j_idt49"]/a[1]

                            # #Create New Client
                            # Click Element                        xpath=//*[@id="side-menu"]/li[5]/a
                            # Wait Until Page Contains             List
                            # Click Element                        xpath=//*[@id="j_idt49"]/a[1]
                            # Wait Until Page Contains             Create New Client
                            # ${client_name} =                     Generate Random String                 10                 [LOWER]
                            # Input Text                           id=name                                ${client_name}
                            # ${client_email}=                     Catenate                               SEPARATOR=         ${client_name}    @email.com
                            # Input Text                           id=email                               ${client_email}
                            # Select Checkbox                      id=gender:0
                            # ${ssn}=                              Generate Random String                 7                  [NUMBERS]
                            # Input Text                           id=socialSecurityNumber                ${ssn}
                            # Click Element                        xpath=//a[text()='Save']
                            # Wait Until Page Contains             Client was successfully created.
                            # Click Element                        xpath=//a[text()='Delete']
                            # Wait Until Page Contains             Client was successfully deleted.
                            # Log To Console                       The users was successfully deleted!
                            # 1


