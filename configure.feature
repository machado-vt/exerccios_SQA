#language: pt

Funcionalidade: Configuração de produto
Como cliente da EBAC-SHOP
Quero configurar meu produto de acordo com meu tamanho e gosto
e escolher a quantidade
Para depois inserir no carrinho

Contexto:
Dado que o cliente está na página do produto

Cenário: Escolher tamanho
Quando selecionar um tamanho
Então o produto é atualizado de acordo

Cenário: Escolher cor
Quando selecionar uma cor
Então o produto é atualizado de acordo

Cenário: Limpar carrinho
Dado que o cliente configurou o produto
Quando ele clica em "Limpar"
Então a configuração do produto deve voltar ao formato padrão

Esquema do Cenário: Escolher quantidade de produtos
Quando ele escolher a <quantia> de produtos
Então o site deve emitir a <mensagem>
E levar o usuário para a <pagina>

Exemplos:
            | quantia | mensagem                                                           | pagina                         |
            | 9       | "Itens adicionados ao carrinho com sucesso"                        | "www.ebacshop.com.br/carrinho" |
            | 10      | "Itens adicionados ao carrinho com sucesso"                        | "www.ebacshop.com.br/carrinho" |
            | 11      | "Só é possível adicionar até 10 itens de uma vez, tente novamente" | "www.ebacshop.com.br/produto"  |