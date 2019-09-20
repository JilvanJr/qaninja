#language:pt

@green_food
Funcionalidade: Finalizar pedido
    Para que eu possa receber o pedido no meu endereço
    Sendo um usuário que fechou o carrinho com itens
    Posso finalizar o meu pedido

    Cenario: Finalizar pedido com cartão refeição

        Dado que eu fechei o pedido com os itens:
            | quantidade | nome                 | descricao                                  | subtotal |
            | 1          | Suco Detox           | Suco de couve, cenoura, salsinha e maçã.   | R$ 14,90 |
            | 2          | Hamburger de Quinoa  | Cheio de fibras e muito saboroso.          | R$ 21,00 |
        E informei os meus dados de entrega: 
            | nome        | Junior            |
            | email       | eu@junior.io      |
            | rua         | Rua Elvira Ferraz |
            | numero      | 250               |
            | complemento | 5º andar          |
        Quando eu finalizo o pedido com "Cartão Refeição"
        Então devo ver a seguinte mensagem:
        """
        Seu pedido foi recebido pelo restaurante. Prepare a mesa que a comida está chegando!
        """
        



    #BDD -> Desenvolvimento guiado por comportamento -> voltado para o negocio
    #BDT -> Teste guiado por comportamento -> esse de baixo (não recomendado)
    
    # Cenario: Finalizar pedido com cartão refeição

    #     Dado que eu fechei o meu carrinho
    #     E preencho o campo nome com "Junior"
    #     E preencho o campo email com "eu@junior.io"
    #     E preencho o campo confirmação de email com "eu@junior.io"
    #     E preencho a rua com "Rua Elvira Ferraz"
    #     E preencho o numero da rua com "250"
    #     E preencho o campo complemento com "5º andar"
    #     E clico na forma de pagamento "Cartão Refeição"
    #     Quando eu clico em "Finalizar Pedido"
    #     Então devo ver uma mensagem de sucesso