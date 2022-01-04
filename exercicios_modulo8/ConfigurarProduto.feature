    #language: pt


    @configurar
    Funcionalidade: Configurar Produto
    Como cliente do portal EBAC-SHOP
    quero poder configurar meus produtos de compra
    escolhendo o tamanho, quantidade e cor

    @configuracao_valida
    Esquema do Cenário: Configuração de produto válida
    Dado eu tenha selecionado um produto no site EBAC-SHOP
    Quando eu selecionar <cor>
    E selecionar <tamanho>
    E selecionar <quantidade>
    E clicar no botão comprar
    Entao produto deve ser adicionado ao carrinho e aparecer a <mensagem>


    Example:
            | cor      | tamanho | quantidade | mensagem                                 |
            | azul     | PP      | 1          | seu item fou adicionado ao carrinho      |
            | laranja  | M       | 7          | Seus itens foram adicionados ao carrinho |
            | vermelha | GG      | 10         | Seus itens foram adicionados ao carrinho |

    @configuracao_invalida
    Esquema do Cenário: Configuração de produto Inválida
    Dado eu tenha selecionado um produto no site EBAC-SHOP
    Quando eu selecionar <cor>
    E selecionar <tamanho>
    E selecionar <quantidade>
    E clicar no botão comprar
    Entao deve aparecer <mensagem>


    Example:
            | cor      | tamanho | quantidade | mensagem                                                   |
            | azul     | PP      | 11         | Quantidade não pode ser maior que 10 itens                 |
            | laranja  | M       | 20         | Quantidade não pode ser maior que 10 itens                 |
            | vermelha | GG      | 0          | Quantidade não pode ser 0 por favor selecione a quantidade |

    @Limpar
    Cenario: Limpar configuração de produto
    Dado que eu tenha uma configuração de produto válida
    Quando eu clicar no botão Limpar
    Entao o produto deve voltar para o estado inicial de configuração


    






