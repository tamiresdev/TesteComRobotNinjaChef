***Settings***
Documentation   Cadastro de produtos/pratos
...             Sendo um cozinheiro amador
...             Quero cadastrar meus melhores pratos
...             Para que eu possa cozinha-los para outras pessoas
Test Setup      Sessão de Login     tamiresdev@outlook.com  
Test Teardown   Fechar sessão
Resource        ../resources/base.robot

***Variables***

&{Macarrão}=   img=macarrao.jpg      nome=Macarrão de Panela     tipo=Massas     preco=15.00

***Test Cases***
Novo Prato 
    Dado que "${Macarrão}" é um dos meus pratos
    Quando faço o cadastro desse produto 
    Então devo ver este prato no meu dashboard
