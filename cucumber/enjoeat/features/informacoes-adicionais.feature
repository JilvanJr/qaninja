#language:pt

Funcionalidade: Informações Adicionais
    Para que eu possa ver as Informações Adicionais
    Sendo um usuario que escolheu um restaurante
    Posso ver a categoriam descrição detalhada e horarios de funcionamento

    @infos
    Cenário: Detalhes do restaurante

        Dado que acesso a lista de restaurantes
        Quando eu escolho um restaurante "Burger House"
        Então eu vejo as seguintes Informações adicionais:
            | categoria | Hamburgers                                |
            | descricao | 40 anos se especializando em trash food.  |
            | horarios  | Funciona todos os dias, de 10h às 22h     |