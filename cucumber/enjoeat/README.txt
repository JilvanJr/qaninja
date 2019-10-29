
# Aula 7 - Scenario Outline ou Data Tables?
## Demais exemplos para .feature

```
#language: pt

Funcionalidade: Restaurantes    
    Para que eu possa saber quais os restaurantes disponíveis com o tempo de entrega e nota de avaliação
    Sendo um usuário que deseja pedir comida
    Posso acessar a lista de restaurantes

    Contexto: Lista de restaurantes
        Dado que tenho uma lista de restaurantes

    Cenario: Todos os restaurantes

        Quando acesso a lista de restaurantes
        Então vejo todas as opções disponíveis

    Cenario: Categorias

        Quando acesso a lista de restaurantes
        Então cada restaurante deve exibir sua categoria

    Cenario: Tempo de entrega

        Quando acesso a lista de restaurantes
        Então cada restaurante deve exibir o tempo de entrega

    Cenario: Nota de avaliação

        Quando acesso a lista de restaurantes
        Então cada restaurante deve exibir sua nota de avaliação
@temp
    Esquema do Cenario: Restaurantes disponiveis 

        Quando acesso a lista de restaurantes
        Então cada restaurante deve ter <id> <nome> <categoria> <entrega> <avaliacao>

        Exemplos:
        | id | nome              | categoria    | entrega      | avaliacao |
        | 0  | "Bread & Bakery"  | "Padaria"    | "25 minutos" | 4.9       |
        | 1  | "Burger House"    | "Hamburgers" | "30 minutos" | 3.5       |
        | 2  | "Coffee Corner"   | "Cafeteria"  | "20 minutos" | 4.8       |
```

## demais exemplos para _step.rb

```
 Dado("que tenho uma lista de restaurantes") do
     @restaurant_data = [
         {name: 'Bread & Bakery', category: 'Padaria', delivery_time: '25 minutos', rating: '4.9'},
         {name: 'Burger House', category: 'Hamburgers', delivery_time: '30 minutos', rating: '3.5'},
         {name: 'Coffe Corner', category: 'Cafeteria', delivery_time: '20 minutos', rating: '4.8'}
     ]
 end

 Quando("acesso a lista de restaurantes") do                                  
     visit '/restaurants'
 end    

 Então("vejo todas as opções disponíveis") do                                 
     restaurantes = all('.restaurant-item') # o metodo all devolve uma coleção de elementos [array]
 #    puts restaurantes.size #o método size trás a quantidade de itens 
 #    puts restaurantes.class
     expect(restaurantes.size).to be > 0
 #    expect(restaurantes.size).to eql 6
 end    

 Então("cada restaurante deve exibir sua categoria") do                       
     restaurants = all('.restaurant-item')
     @restaurant_data.each_with_index do |value, index|
         expect(restaurants[index]). to have_content value[:category]
     end    
 end   

 Então("cada restaurante deve exibir o tempo de entrega") do                  
     restaurants = all('.restaurant-item')
   
     @restaurant_data.each_with_index do |value, index|
         expect(restaurants[index]). to have_content value[:delivery_time]
     end
 end    

 Então("cada restaurante deve exibir sua nota de avaliação") do               
     restaurants = all('.restaurant-item')
   
     @restaurant_data.each_with_index do |value, index|
         expect(restaurants[index]). to have_content value[:rating]
     end
 end

 Então("cada restaurante deve ter {int} {string} {string} {string} {float}") do |id, name, category, delivery_time, rating|
     restaurants = all('.restaurant-item')
     expect(restaurants[id]).to have_text name.upcase
     expect(restaurants[id]).to have_text category
     expect(restaurants[id]).to have_text delivery_time
     expect(restaurants[id]).to have_text rating
 end
```

#Aula 15 Bota casaco! Identificando elementos pelo indice

Possui Contexto, Esquema do cenario & exemplos, tabela (hashes) adicionando e 
removendo item do carrinho, interpolação de string, pegando valor filho na div, each_with_index 


#Aula 16 Dynamic Steps do Cucumber
Usa outro BDD dentro do step
steps %{
        Quando eu adiciono todos os itens
    }


#Aula 17 Prazer, Page Object
Instancia classe, 
classe tem recurso do capybara dentro dela. {include Capybara::DSL}


#Aula 20 Ferrari ou Fusca? BDD ou BTD?
Gerar relatário html, '--out' sera a saida, pasta log nao pode estar dentro da pasta features
cucumber --format html --out=log/report.html

#Aula 21 Reports do Cucumber
cucumber.yaml
relatorio, Formatação html e cmd

-----------
Para rodar 
rake specs["-t @smoke","-p chrome"]