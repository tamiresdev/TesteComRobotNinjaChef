***Settings***
Documentation          Aqui teremos palavras chaves de apoio


***Keywords***
Sessão de Login
    [Arguments]                             ${email}    

    base.Abrir sessão 
    Go To                                   ${base_url}
    Input Text       ${CAMPOEMAIL}          ${email}             
    Click Element    ${BOTAOQUEROCOZINHAR}  
    Wait Until Page Contains Element        ${DIV_DASH} 