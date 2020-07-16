
***Settings***
Documentation       Aqui teremos a estrutura base do projeto, o Selenium é importado aqui
Library             SeleniumLibrary
Resource            elements.robot
Resource            kws.robot
Resource            helpers.robot

***Variables***

${base_url}         http://ninjachef-qaninja-io.umbler.net/ 



***Keywords***
## Ganchos 
Abrir sessão 
     Open Browser     about:black    chrome
Fechar sessão    
     Close Browser