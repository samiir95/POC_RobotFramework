*** Settings ***
Resource    Variables.robot
Library    SeleniumLibrary

*** Variables ***
&{DESIRED_CAPABILITIES}     name=Login_Chrome    enableVNC=${True}       enableVideo=${True}
${os}                           Windows
${osVersion}                    8
${browser}                      Chrome
${browserVersion}               latest
${browserstack_userName}        johnsmith_ijn2kJ
${browserstack_accessKey}       RNraCwk33MfdD1pSpzmy

*** Keywords ***
Open Chrome Browser
    Set Common Global Variables

#    to run locally
#========================
    Open Browser                url=${URL}      browser=Chrome  #this for open the browser for the passed driver and url


#to run on selenoid
#======================
#    Open browser            url=${URL}      browser=Chrome         remote_url=${Selenoid_Url}      desired_capabilities=&{DESIRED_CAPABILITIES}
    #remote_url for passing Selenium Grid URL       #enableVnc to view browser window running using Vnc  #desired_Capabilities for driver

#   to run on browsestack
#===========================
#    ${remoteUrl}                Set Variable        http://${browserstack_userName}:${browserstack_accessKey}@hub.browserstack.com:80/wd/hub
#    &{desiredCapabilities}      Create Dictionary   os=${os}     osVersion=${osVersion}     browserName=${browser}   browserVersion=${browserVersion}
#    Open Browser      url=${URL}    remote_url=${remoteUrl}     desired_capabilities=${desiredCapabilities}

    Maximize Browser Window
    Set Selenium Speed          0.5s    #this is for setting speed of selenium execution, basically the time difference between https requests