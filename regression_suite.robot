*** Settings ***
Library                               OperatingSystem
Library                               Selenium2Library
Library                               String

Resource                              ./pages-and-keywords/testsetup_and_teardown.robot
Resource                              ./pages-and-keywords/page_login.robot
Resource                              ./pages-and-keywords/page_dashboard.robot
Resource                              ./pages-and-keywords/page_client.robot
Resource                              ./pages-and-keywords/page_bedroom.robot

Test Setup                            Setup
Test Teardown                         Teardown



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


Test create new Bedroom and delete
                                      Test Case Valid Login
                                      Click link bedroom
                                      Click create new bedroom
                                      Fill in the credentials for the room
                                      Delete the room that was created
                                      Perform Logout












