*** Settings ***
Library    SeleniumLibrary
Library    XML

*** Variables ***
${URL}                  https://www.saucedemo.com
${USERNAME_LOGIN}       standard_user
${USERNAME_PASSOWORD}   secret_sauce
${POSTAL_CODE}          00000-430
${LOGIN_BLOQUEADO}      locked_out_user 
   
    

*** Keywords ***
 Abrir o navegador
     Open Browser     browser=chrome
     Maximize Browser Window 


fechar navegador  
    Close Browser   

 Dado que esteja na home page do site 
     Go To    url= ${URL}

Quando preencher os dados de login e senha
    Input Text    locator=//input[contains(@placeholder,'Username')]            text=${Username_LOGIN}  
    Input Password    locator=//input[contains(@placeholder,'Password')]    password=${USERNAME_PASSOWORD}  

Então login realzado com sucesso
    Click Button    locator=//input[contains(@type,'submit')]

E escolher o produto desejado 
    Click Button    locator=//button[contains(@data-test,'add-to-cart-sauce-labs-backpack')]

E adicionado com sucesso 
    Click Element    locator=//a[contains(@class,'shopping_cart_link')]  

E adicionar todos os produtos
    Click Element    locator=//button[contains(@data-test,'add-to-cart-sauce-labs-backpack')]
    Click Element    locator=//button[contains(@data-test,'add-to-cart-sauce-labs-bike-light')]
    Click Element    locator=//button[contains(@data-test,'add-to-cart-sauce-labs-bolt-t-shirt')] 
    Click Element    locator=//button[contains(@data-test,'add-to-cart-sauce-labs-fleece-jacket')]  
    Click Element    locator=//button[contains(@data-test,'add-to-cart-sauce-labs-onesie')]
    Click Element    locator=//button[contains(@data-test,'add-to-cart-test.allthethings()-t-shirt-(red)')]
    
E produtos adicionado com sucesso
    Click Element    locator=//a[contains(@class,'shopping_cart_link')]

E fazer checkout
    Click Button    locator=//button[@class='btn btn_action btn_medium checkout_button '][contains(.,'Checkout')]     
    
E Preencher First Name, Last Name e Postal Code
    Input Text    locator=//input[contains(@placeholder,'First Name')]    text=${Username_LOGIN} 
    Input Text    locator=//input[contains(@placeholder,'Last Name')]    text=${USERNAME_PASSOWORD}
    Input Password    locator=//input[contains(@placeholder,'Zip/Postal Code')]    password=${POSTAL_CODE} 

E clicar compra realizada com sucesso    
     Click Button    locator=//input[contains(@type,'submit')]

Entao finalizo compra
    Click Button    locator=//button[@class='btn btn_action btn_medium cart_button'][contains(.,'Finish')]   
    Capture Page Screenshot 


Quando preencher os dados de login e senha bloqueado        
    Input Text    locator=//input[contains(@placeholder,'Username')]      text=${LOGIN_BLOQUEADO}
    Input Password    locator=//input[contains(@placeholder,'Password')]    password=${USERNAME_PASSOWORD}

Então login não realizado 
    Click Button    locator=//input[contains(@type,'submit')]
    Capture Page Screenshot