#language:pt

# historia do usuario
Funcionalidade: Qual é o prato do dia 
    Queremos saber qual o prato do dia na capital paulista

    Cenario: Hoje é dia de virado a paulista

#Pré condição
        Dado que hoje é segunda-feira
#Ação, execução
        Quando eu pergunto qual é o prato do dia
#verificação        
        Então a resposta deve ser "Virado a Paulista"

    Cenario: Hoje é dia de Dobradinha

        Dado que hoje é terça-feira
        Quando eu pergunto qual é o prato do dia
        Então a resposta deve ser "Dobradinha"
        