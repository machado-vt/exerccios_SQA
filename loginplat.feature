            #language: pt

            Funcionalidade: tela de login
            1  Ao inserir dados válidos deve ser direcionado para a tela de checkout
            2  Ao inserir um dos campos inválidos deve exibir uma mensagem de alerta “Usuário ou senha inválidos”

            Contexto:
            Dado que eu acesse o portal de autenticação da EBAC

            Esquema do Cenário: autenticação
            Quando eu digitar o <usuario>
            E a <senha>
            Então deve direcionar o usuário para a <pagina>
            E exibir a <mensagem>

            Exemplos:
            | usuario                | senha      | pagina                  | mensagem                         |
            | "alipio@ebac.com.br"   | "teste123" | "www.ebacshop/checkout" | "Login realizado com sucesso"    |
            | "betina$ebac.com.br"   | "teste123" | "www.ebacshop/login"    | "Houve um erro, tente novamente" |
            | "carlos@ebac.org.br"   | "teste123" | "www.ebacshop/chechout" | "Login realizado com sucesso"    |
            | "duda@ebac.br"         | "Ab123$!"  | "www.ebacshop/login"    | "Login realizado com sucesso"    |
            | "ebinaldo$ebac.com.br" | "aabb"     | "www.ebacshop/login"    | "Houve um erro, tente novamente" |