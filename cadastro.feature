            #language: pt

            Funcionalidade: cadastro no checkout
            Como cliente da EBAC-SHOP
            Quero concluir meu cadastro
            Para finalizar minha compra

            1 Deve ser cadastrado com todos os dados obrigatórios, marcado com asteriscos
            2 Não deve permitir campo e-mail com formato inválido. Sistema deve inserir uma mensagem de erro

            Contexto:
            Dado que eu esteja na tela de chechout
            E descadastrado

            Cenário: Cadastro sem nome
            Quando eu preencher todos os campos
            E deixar o campo Nome vazio
            Então o sistema deve exibir uma mensagem de erro

            Cenário: Cadastro sem Sobrenome
            Quando eu preencher todos os campos
            E deixar o campo Sobrenome vazio
            Então o sistema deve exibir uma mensagem de erro

            Esquema do Cenário: Cadastro com e-mail inválido
            Quando eu preencher todos os campos
            E preencher o campo <email>
            Então o sistema deve exibir uma <mensagem>
           
            Exemplos:
            | email                 | mensagem          |
            | "zeus@ebac.com.br"    | "E-mail válido"   |
            | "yuri#ebac.com.br"    | "E-mail inválido" |
            | "xavier@ebac"         | "E-mail inválido" |
            | "william@ebac.org.br" | "E-mail válido"   |
            | "vitor@ebac.com"      | "E-mail válido"   |
            | "12386581239"         | "E-mail inválido" |