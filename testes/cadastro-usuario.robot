***Settings***
Documentation   Suite dos testes de cadastro
Test Setup      Abrir sessão 
Test Teardown   Fechar sessão
Resource        ../resources/base.robot

***Test Cases***
Cadastro Simplificado 
    Dado que acesso a página principal 
    Quando entro com o meu e-mail"tamiresdev@outlook.com" 
    Então devo ser autenticado 

E-mail incorreto
    Dado que acesso a página principal 
    Quando entro com o meu e-mail"tamiresdev.outlook.com"
    Então devo ver a mensagem "Oops. Informe um email válido!"

E-mail não preenchido 
    Dado que acesso a página principal 
    Quando entro com o meu e-mail"${EMPTY}"
    Então devo ver a mensagem "Oops. Informe um email válido!"


