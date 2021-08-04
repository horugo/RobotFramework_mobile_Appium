***Settings***

Library     AppiumLibrary

# {
#   "automationName": "UiAutomator2",
#   "platformName": "Android",
#   "deviceName": "Emulator",
#   "app": "C:\\qaninja\\twp\\app\\twp.apk",
#   "udid": "T1011S64GBCN20365292225"
# }

***Test Cases***
Deve Abrir a tela principal
    Open Application        http://localhost:4723/wd/hub
    ...                     automationName=UiAutomator2
    ...                     platformName=Android
    ...                     deviceName=Emulator
    ...                     app=${EXECDIR}/app/twp.apk
    ...                     udid=T1011S64GBCN20365292225

    Wait Until Page Contains    Training Wheels Protocol    5
    Wait Until Page Contains    Mobile Version     5
    Close Application
