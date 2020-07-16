***Settings***
Documentation           Aqui teremos todas as palavras chaves de automação dos comportamentos

***Keywords***
Dado que acesso a página principal 
    Go To            ${base_url}
Quando entro com o meu e-mail"${email}"
    Input Text       ${CAMPOEMAIL}                  ${email}             
    Click Element    ${BOTAOQUEROCOZINHAR}  

Então devo ser autenticado
    Wait Until Page Contains Element                ${DIV_DASH}   
    
Então devo ver a mensagem "${mensagem_esperada}"    
    Wait Until Element Contains  ${DIV_ALERT}       ${mensagem_esperada}

# Cadastro de Pratos

Dado que "${produto}" é um dos meus pratos
    Set Test Variable   ${produto} 

Quando faço o cadastro desse produto 
    Wait Until Element Is Visible                   ${BOTAO_ADD}   5
    Click Element       ${BOTAO_ADD}
    Choose File         ${IMAGEM}                   ${EXECDIR}/resources/images/${produto['img']}
    Input Text          ${CAMPO_NOME}               ${produto['nome']}
    Input Text          ${CAMPO_TIPO_PRODUTO}       ${produto['tipo']}
    Input Text          ${CAMPO_TIPO_PRECO}         ${produto['preco']}  
    Click Element       ${BOTAO_CADASTRAR}
    
Então devo ver este prato no meu dashboard
    Wait Until Element Contains         class:product-list     ${produto['nome']}