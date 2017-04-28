*** Settings ***
Library                             OperatingSystem
Library                             Selenium2Library
Library                             String

Resource                            ./pages-and-keywords/testsetup_and_teardown.robot
Resource                            ./pages-and-keywords/page_login.robot
Resource                            ./pages-and-keywords/page_dashboard.robot
Resource                            ./pages-and-keywords/page_client.robot

Test Setup                          Setup
Test Teardown                       Teardown



*** Test Cases ***
Test Case Valid Login And Logout
                                    Test Case Valid Login
                                    Perform Logout


Test Case Invalid Login
                                    Test Case Invalid Login


Create new client and delete
                                    Test Case Valid Login
                                    click link client
                                    click create new client
                                    Fill in credentials for client and save
                                    Delete client that was created
                                    Perform Logout
