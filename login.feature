#language: pt

Funcionalidade: [US-0002] - Login na plataforma
    Como cliente da EBAC-SHOP
    Quero fazer o login (autenticação) na plataforma
    Para visualizar meus pedidos

    Contexto:
        Dado que os usuários estão tentando realizar login na plataforma
            | nome    | email               | senha      | mensagem                          |
            | Rodrigo | rodrigo@ebac.com.br | 1641231986 | Usuário <nome> logado com sucesso |
            | Mônica  | monica@ebac.com.br  | Mca13542   | Usuário <nome> logado com sucesso |
            | Gael    | gael@eebacc.com.br  | GGaa@2018  | Usuário ou senha inválidos        |

    Cenário: Login de usuário com redirecionamento para a tela de checkout
        Quando o usuário informar o email <email> e senha <senha>
        Então o usuário <nome> deve ser redirecionado para a tela de checkout
            E a mensagem <mensagem> deve ser exibida na tela