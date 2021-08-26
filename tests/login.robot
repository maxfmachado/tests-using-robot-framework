***Settings***

Documentation    Login Tests

Resource         ${EXECDIR}/resources/base.robot
Test Setup       Start Session
Test Teardown    Finish Session

***Test Cases***
Successfully logged in
    Login With                 felipe@gmail.com    mudar123    NONE
    Wait for Elements State    css=.dashboard      visible     3       Login error

Incorrect Login
    [Template]          Login With
    felipe@gmail.com    mudar122      Usuário e/ou senha inválidos.
    felipi@gmail.com    mudar123      Usuário e/ou senha inválidos.
    felipi$gmail.com    mudar123      Oops. Informe um email válido!
    ${EMPTY}            mudar123      Oops. Informe um email válido!
    felipe@gmail.com    ${EMPTY}      Oops. Informe sua senha secreta!
    ${EMPTY}            ${EMPTY}      Oops. Informe um email válido!