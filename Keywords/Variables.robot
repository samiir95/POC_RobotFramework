*** Keywords ***
Set Common Global Variables
    Set Global Variable    ${URL}                       https://spa.qvp.uat.devops.takamol.support/home
    Set Global Variable    ${Explicit_Timeout}          60s
    set global variable    ${Selenoid_Url}                http://127.0.0.1:4444/wd/hub