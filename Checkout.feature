#language: pt

Funcionalidade: [US-0003] - Tela de cadastro - Checkout
    Como cliente da EBAC-SHOP
    Quero fazer concluir meu cadastro
    Para finalizar minha compra


    Contexto:
        Dado na pagina de Checkout


    Cenário: Preenchimento dos dados pessoais para faturamento
        Quando o usuário preencher os dados pessoais com <nome> e <sobrenome>
            E preencher os campos de endereço com <pais>, <endereco>, <cidade> e <CEP>
            E preencher os campos para contato com <telefone> e <email>
        Então ao clicar no botão Finalizar Compra o sistema deve exibir a mensagem <mensagem>
        Exemplos:
            | nome | sobrenome | pais   | endereco | cidade    | CEP       | telefone         | email            | mensagem                                           |
            | Gael | Prata     | Brasil | Rua X    | Maricá RJ | 24930-132 | (21) 99999-9999  | Gael@ebac.com.br | Detalhes para faturamento atualizados com sucesso! |
            |      | Prata     | Brasil | Rua X    | Maricá RJ | 24930-132 | (21) 99999-9999  | Gael@ebac.com.br | O preenchimento do campo Nome é obrigatório!       |
            | Gael |           | Brasil | Rua X    | Maricá RJ | 24930-132 | (21) 99999-9999  | Gael@ebac.com.br | O preenchimento do campo Sobrenome é obrigatório!  |
            | Gael | Prata     |        | Rua X    | Maricá RJ | 24930-132 | (21) 99999-9999  | Gael@ebac.com.br | O preenchimento do campo País é obrigatório!       |
            | Gael | Prata     | Brasil |          |           | 24930-132 | (21) 99999-9999  | Gael@ebac.com.br | O preenchimento do campo Endereço é obrigatório!   |
            | Gael | Prata     | Brasil | Rua X    |           | 24930-132 | (21) 99999-9999  | Gael@ebac.com.br | O preenchimento do campo Cidade é obrigatório!     |
            | Gael | Prata     | Brasil | Rua X    | Maricá RJ |           | (21) 99999-9999  | Gael@ebac.com.br | O preenchimento do campo CEP é obrigatório!        |
            | Gael | Prata     | Brasil | Rua X    | Maricá RJ | 24930-132 |                  | Gael@ebac.com.br | O preenchimento do campo Telefone é obrigatório!   |
            | Gael | Prata     | Brasil | Rua X    | Maricá RJ | 24930-132 | (21) 99999-9999  |                  | O preenchimento do campo E-mail é obrigatório!     |
            | Gael | Prata     | Brasil | Rua X    | Maricá RJ | 24930-132 | (21) 99999-9999  | Gael2ebac.com.br | E-mail informado inválido!                         |
            | Gael | Prata     | Brasil | Rua X    | Maricá RJ | 24930-132 | (21) 99999-9999  | @ebac.com.br     | E-mail informado inválido!                         |
            | Gael | Prata     | Brasil | Rua X    | Maricá RJ | 24930-132 | (21) 99999-9999  | Gael@ebac        | E-mail informado inválido!                         |
            | Gael | Prata     | Brasil | Rua X    | Maricá RJ | aaaaa-aaa | (21) 99999-9999  | Gael@ebac.com.br | Campo CEP deve conter apenas números!              |
            | Gael | Prata     | Brasil | Rua X    | Maricá RJ | 01234-567 | telefone testeee | Gael@ebac.com.br | Campo telefone deve conter apenas números!         |
            | Gael | Prata     | xa34   | Rua X    | Maricá RJ | 24930-132 | (21) 99999-9999  | Gael@ebac.com.br | País informado inválido ou não selecionado!        |