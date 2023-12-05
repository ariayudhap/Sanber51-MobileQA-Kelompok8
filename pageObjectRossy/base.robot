*** Settings ***
Library                AppiumLibrary


*** Variables ***
${remote_url}                      http://127.0.0.1:4723/wd/hub
${platformName}                    Android
${platformVersion}                 12.0
${deviceName}                      device
${udid}                            emulator-5554
${appActivity}                     com.example.myapplication.MainActivity
${appPackage}                      com.example.myapplication


*** Keywords ***
Open Flight Application       
    Open Application               remote_url=${remote_url}
    ...                            platformName=${platformName}
    ...                            platformVersion=${platformVersion}
    ...                            deviceName=${deviceName}
    ...                            udid=${udid}
    ...                            appPackage=${appPackage}
    ...                            appActivity=${appActivity}

Close Flight Application
    Close Application             
