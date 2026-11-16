*** Settings ***
Resource  resource.robot
Suite Setup  Start From Zero
Suite Teardown  Close Browser

*** Test Cases ***
When counter is set to a value the value is shown
    Go To  ${HOME_URL}
    Fill Text  input[name="value"]  42
    Click  button >> text=Aseta
    Get Text  body  *=  nappia painettu 42 kertaa