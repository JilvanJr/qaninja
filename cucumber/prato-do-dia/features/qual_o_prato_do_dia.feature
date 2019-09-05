#language:pt

# historia do usuario
Funcionalidade: Qual é o prato do dia 
    Queremos saber qual o prato do dia na capital paulista

    Cenario: Hoje é dia de virado a paulista

    Esquema do Cenario: Prato do dia

        Dado que hoje é <dia>
        Quando eu pergunto qual é o prato do dia
        Então a resposta deve ser <resposta>

     Exemplos:
     | dia              | resposta              |
     | "segunda-feira"  | "Virado a Paulista"   |
     | "terça-feira"    | "Dobradinha"          |
     | "quarta-feira"   | "Feijoada"            |
     | "quinta-feira"   | "Macarronada"         |
     | "sexta-feira"    | "File de Merluza"     |
     | "sábado"         | "Veja o Cardápio"     |
     | "domingo"        | "Fechado"             |
     | "Nada"           | "Valor inválido"      |
     | "Tudo"           | "Valor inválido"      |