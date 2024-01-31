*** Settings ***

Resource    ResourceBlogTest.robot

Resource    ResourceBlogTest.robot
Test Setup    Acessar a pagina do blog
Test Teardown    Fechar navegador

*** Test Cases ***

Caso de teste 01: Pesquisar um post

    Pesquisar por um post com "Season Premiere: Introdução ao Robot Framework"
    Conferir mensagem de pesquisa por Mostrando postagens que correspondem à pesquisa por Season Premiere: Introdução ao Robot Framework


Caso de Teste 02: Ler um post

    Acessar o post "Season Premiere: Introdução ao Robot Framework"
    Conferir se a imagem do robô aparecer
    Conferir se o texto nesse post vou apresentar-lhes o astro deste blog
