**Settings***

Resource            ../resources/base.robot

Test Setup          Open Session
Test Teardown       Close Session

**Variables***
${SPINNER}=          id=io.qaninja.android.twp:id/spinnerJob
${LIST_OPTIONS}=        class=android.widget.ListView

***Test Cases***
Deve selecionar o perfil QA
    Go To SingUp Form

    Choose Job      QA

Deve selecionar o perfil DevOps
    Go To SingUp Form

    Choose Job      DevOps
***Keywords***
Choose Job
    [Arguments]     ${target}

    Click Element                       ${SPINNER}
    Wait Until Element Is Visible       ${LIST_OPTIONS}
    Click Text                          ${target}