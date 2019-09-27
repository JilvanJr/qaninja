#language:pt

Funcionalidade: login
    Para que possa gerenciar os filmes do catálogo NinjaFlix
    Sendo um usuário previamente cadastrado
    Posso acessar o sistema com o meu email e senha

    Cenario: Acesso
        Quando eu faço o login com "tony@stark.com" e "pwd123"
        Então devo ser autenticado
        E devo ver "Tony Stark" na área logada

    Cenario: Senha inválida
        Quando eu faço o login com "tony@stark.com" e "abc123"
        Então não devo ser autenticado
        E devo ver a mensagem de alerta "Usuário e/ou senha inválidos"

    Cenario: Usuário não existe
        Quando eu faço o login com "404@yahoo.com" e "abc123"
        Então não devo ser autenticado
        E devo ver a mensagem de alerta "Usuário e/ou senha inválidos"

    Cenario: Email não informado
        Quando eu faço login com "" e "abcxpto"
        Então não devo ser autenticado
        E devo ver a mensagem de alerta "Opps. Cadê o email?"

    Cenario: Email não informado
        Quando eu faço login com "teste@gmail.com" e ""
        Então não devo ser autenticado
        E devo ver a mensagem de alerta "Opps. Cadê a senha?"