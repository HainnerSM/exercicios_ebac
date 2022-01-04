            #language: pt


            Funcionalidade: login
            Como usuario do site da EBAC-SHOP quero poder
            me autenticar na plataforma

            Contexto:
            Dado que eu esteja na tela de login do site da EBAC-SHOP



            @LogInvalido
            Cenário: Login na plataforma válido
            Quando eu digitar usuario "hainner@email.com"
            E senha  "12345"
            Entao deve deve ser transferido pra tela de checkout com a mensagem "bem vindo hainner"



            @LoginInvalido
            Cenário: Login na plataforma inválido
            Quando eu digitar usuario "raul"
            E senha  "12345"
            Entao deve aparecer um alerta com a mensagem "Usuário ou senha inválidos"

            @LoginValidoTabela
            Esquema do Cenario: Authenticar multiplos usuarios
            Quando eu digitar usuario <email>
            E senha <senha>
            Entao deve me redirecionar para tela de checkout com a mensage <mensage>


            Exemplos:
            | email               | senha   | mensagem            |
            | "hainner@email.com" | "12345" | "bem vindo Hainner" |
            | "raul@email.com"    | "12345" | "bem vindo Raul"    |
            | "marilia@email.com" | "54321" | "bem vindo Marilia" |