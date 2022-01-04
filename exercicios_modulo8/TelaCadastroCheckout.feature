            #language: pt


            Funcionalidade: Cadastro de Checkout
            fazer o cadastro com todas as informações necessárias
            para fazer o checkout do meu produto.

            Contexto:
            Quando eu estiver autenticado no site da EBAC-SHOP
            E estiver na tela de checkout

            @checkoutConcluido
            Cenário: Checkout completo
            E preencher todos os campos marcados com asterisco com dados válidos
            E clicar  no botão finalizar compra
            Entao minha compra deve ser finalizada e apresentar a mensagem "compra realizada com sucesso"


            @emailInvalido
            Cenário: email de checkout inválido
            E preencher todos os campos com asterisco com dados válidos
            Mas preencher o campo email com um email inválido
            E clicar no botão finalizar compra
            Entao deve aparecer a mensagem "Email inválido, por favor entre com um email válido"


            @campoVazio
            Cenário: checkout com campo vázio
            E <campoobrigatorio> não for preenchido com nenhum dado
            E eu clicar no botão finalizar compra
            Entao deve aparecer um alerta com a mensagem <mensagem>

            Exemplos:
            | campoobrigatorio  | mensagem                                      |
            | Nome              | "ERRO:Campo nome não preenchido"              |
            | Sobrenome         | "ERRO:Campo Sobrenome não preenchido"         |
            | País              | "ERRO:Campo País não preenchido"              |
            | Endereço          | "ERRO:Campo Endereço não preenchido"          |
            | Cidade            | "ERRO:Campo nome Cidade preenchido"           |
            | Telefone          | "ERRO:Campo Telefone não preenchido"          |
            | endereço de Email | "ERRO:Campo Endereço de Email não preenchido" |

