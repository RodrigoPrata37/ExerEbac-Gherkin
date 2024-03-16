#language: pt

Funcionalidade: [US-0001]Configurar produto
            Como cliente da EBAC-SHOP
            Quero configurar meu produto de acordo com meu tamanho e gosto
            E escolher a quantidade
            Para depois inserir no carrinho

    Contexto:
        Dado na página de configuração do produto
    Esquema do Cenário: Configuração do item de a cordo com meu tamanho e preferênçia
        Quando clico no botão selecionar <opcao>
        Então o sistema deve manter selecionado <opcao> do produto
            E com o botão comprar deve ficar destacado
        Exemplos:
            | opções             |
            | cores              |
            | medidas            |
            | quantidade         |
            | valores            |




    Esquema do Cenário: Seleção de produtos com tamanho e cor diferente
        Quando seleciono uma blusa da cor <cor>
            E medidas <medidas>
            E adiciono a quantidade <quantidade>
            E valor
        Então o sistema deve acescentar o produto no carrinho

        Exemplos:
            | cor      | tamanho | quantidade | valor |
            | azul     | M       | 1          | R$20  | 
            | azul     | G       | 2          | R$80  |
            | azul     | GG      | 3          | R$120 |
            | vermelho | M       | 1          | R$20  |
            | amarelo  | G       | 2          | R$80  |
            | verde    | GG      | 3          | R$120 |

    Cenário: limpar configuração do produto selecionado
        Quando clico no botão limpar configuração
        Então o sistema deve limpar a configuração do produto
            E a quantidade do produto deve ser 1
            E a cor do produto não deve estar selecionada
            E o tamanho do produto não deve estar selecionado
            E o valor deve estar visivel