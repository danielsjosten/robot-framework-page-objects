*** Setting ***
Resource                           page_login.robot
Resource                           page_client.robot
Resource                           page_bedroom.robot
Resource                           page_user.robot
*** Variables ***
${dashboard_pg_label_dashboard}    Dashboard

${logout_menu}                     xpath=//a[@class='dropdown-toggle']
${logout_submenu}                  xpath=//i[@class='fa fa-sign-out fa-fw']

${left_menu_dashboard}             xpath=//*[@id="side-menu"]/li[2]/a
${left_menu_bedroom}               xpath=//*[@id="side-menu"]/li[3]/a
${left_menu_bill}                  xpath=//*[@id="side-menu"]/li[4]/a
${left_menu_client}                xpath=//*[@id="side-menu"]/li[5]/a
${left_menu_reservation}           xpath=//*[@id="side-menu"]/li[6]/a
${left_menu_user}                  xpath=//*[@id="side-menu"]/li[7]/a



*** Keywords ***
perform logout
                                   Wait Until Page Contains Element            ${logout_menu}
                                   Click Element                               ${logout_menu}
                                   Wait Until Page Contains Element            ${logout_submenu}
                                   Click Element                               ${logout_submenu}
                                   Wait Until Page Contains                    ${login_pg_label_login}

click link dashboard
                                   Wait Until Page Contains Element            ${dashboard_pg_label_dashboard}
                                   Click Element                               ${left_menu_dashboard}

click link client
                                   Wait Until Page Contains Element            ${left_menu_client}
                                   Click Element                               ${left_menu_client}
                                   Wait Until Page Contains                    ${client_pg_label}

click link bedroom
                                   Wait Until Page Contains Element            ${left_menu_bedroom}
                                   Click Element                               ${left_menu_bedroom}
                                   Wait Until Page Contains                    ${bedroom_pg_label}

click link user
                                   Wait Until Page Contains Element            ${left_menu_user}
                                   Click Element                               ${left_menu_user}
                                   Wait Until Page Contains                    ${usr_pg_lbl}
