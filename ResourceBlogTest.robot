*** Settings ***

Library    SeleniumLibrary

*** Variables ***
${URL}   https://robotizandotestes.blogspot.com/
${BROWSER}  chrome
${BTN_PESQUISAR}    css=button.search-expand.touch-icon-button
${INPUT_PESQUISAR}      name=q
${SUBMIT_PESQUISAR}     css=input.search-action.flat-button
${LINK_POST}     xpath=//a[contains(text(), 'Season Premiere: Introdução ao Robot Framework')]
${IMG_ROBO}      xpath=//img[contains(@src,'if_Robot_18_385830_grande')]

*** Keywords ***
Acessar a pagina do blog

    Open Browser     url=${URL}   browser=${BROWSER}
    Title should be    Robotizando Testes

Pesquisar por um post com "${TEXTO_PESQUISA}"
    Wait until element is visible    locator=${BTN_PESQUISAR}
    Click Button    ${BTN_PESQUISAR}
    Input text    ${INPUT_PESQUISAR}    ${TEXTO_PESQUISA}
    Click element    ${SUBMIT_PESQUISAR}

Conferir mensagem de pesquisa por ${MSG_DESEJADA}
    Page should contain    ${MSG_DESEJADA}

Fechar navegador
    Close browser

Acessar o post ${TEXTO_PESQUISA}
    Pesquisar por um post com "${TEXTO_PESQUISA}"
    Click element    ${LINK_POST}
    Wait until page contains    O que é Robot Framework?

Conferir se a imagem do robô aparecer
    Page should contain image    ${IMG_ROBO}

Conferir se o texto ${TEXTO_DESEJADO}
    Page should contain    ${TEXTO_DESEJADO}