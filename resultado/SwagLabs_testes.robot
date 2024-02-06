*** Settings ***
Documentation
Resource          Swaglabs_resource.robot
Test Setup        Abrir o navegador
# Test Teardown     fechar navegador

*** Test Cases ***

Caso de teste 01 - Fazer login
    [documentation]     Nessa keyword é pra abrir o navegador e preencher os dados login e senha
    [Tags]  menus
    Dado que esteja na home page do site
    Quando preencher os dados de login e senha
    Então login realzado com sucesso

Caso de teste 02 - Escolher produto
    [Documentation]   Nessa Keyword é pra fazer login, senha e adicionar 1 produto no carrinho 
    [Tags]     produtos
    Dado que esteja na home page do site 
    Quando preencher os dados de login e senha 
    Então login realzado com sucesso 
    E escolher o produto desejado
    E adicionado com sucesso     
Caso de teste 03 - Adicionar todos os produtos
    [Documentation]    Nessa Keyword é pra fazer login, senha e adicionar todos os produtos no carrinho, quando os produtos forem adicionados finalizo a compra e tiro um screenshot da página 
    [Tags]    produtos 
    Dado que esteja na home page do site 
    Quando preencher os dados de login e senha 
    Então login realzado com sucesso 
    E adicionar todos os produtos
    E produtos adicionado com sucesso
    E fazer checkout
    E Preencher First Name, Last Name e Postal Code
    E clicar compra realizada com sucesso
    Entao finalizo compra

Caso de teste 04 - Fazer login com usuário bloqueado
    [Documentation]     Nessa keyword não é para fazer login, pois o usuário está bloqueado
    [Tags]    produtos
     Dado que esteja na home page do site
     Quando preencher os dados de login e senha bloqueado
     Então login não realizado           