*** Settings ***
Library                                                                                               OperatingSystem
Library                                                                                               Selenium2Library
Library                                                                                               String

Resource                                                                                              ./pages-and-keywords/testsetup_and_teardown.robot
Resource                                                                                              ./pages-and-keywords/page_login.robot
Resource                                                                                              ./pages-and-keywords/page_dashboard.robot
Resource                                                                                              ./pages-and-keywords/page_client.robot
Resource                                                                                              ./pages-and-keywords/page_bedroom.robot
Resource                                                                                              ./pages-and-keywords/page_user.robot

Test Setup                                                                                            Setup
Test Teardown                                                                                         Teardown



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

# !!! There must be a client with name Daniel for the testcase below to work, it's a precondition!
Test create new user and delete
                                                                                                      Test Case Valid Login
                                                                                                      Click link user
                                                                                                      Click create new user
                                                                                                      Check that the first dropdown is set as admin
                                                                                                      Fill in the user credentials
                                                                                                      Delete the user that was created
                                                                                                      Perform Logout


Test Check if a specific user exists in the client list
                                                                                                      Test Case Valid Login
                                                                                                      Click link client
                                                                                                      Check if client is in clientlist
                                                                                                      Perform Logout


# Delete a specific client from list

                                                                                                      # Test Case Valid Login
                                                                                                      # Click link client
                                                                                                      # Delete an existing client from the list
                                                                                                      # Perform Logout




