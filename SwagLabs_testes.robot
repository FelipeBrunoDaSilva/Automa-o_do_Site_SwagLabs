*** Settings ***
Documentation
Resource          Swaglabs_resource.robot
Test Setup        Abrir o navegador
# Test Teardown     fechar navegador

*** Test Cases ***

Caso de teste 01 - Fazer login
    [documentation]
    [Tags]  menus
    Dado que esteja na home page do site
    Quando preencher os dados de login e senha
    Então login realzado com sucesso

 
    