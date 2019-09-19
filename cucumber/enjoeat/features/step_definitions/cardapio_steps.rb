
Dado("que acesso a lista de restaurantes") do
    visit "/restaurants"
end

Quando("eu escolho um restaurante {string}") do |restaurante|                      
    find(".restaurant-item", text: restaurante.upcase).click
end                                                                          
                                                                               
Então("vejo os itens disponiveis no cardápio:") do |table|                   
    items = all('.menu-item-info-box')

    product_data = table.hashes
    
    product_data.each_with_index do |value, index|
        expect(items[index]).to have_text value["produto"].upcase
        expect(items[index]).to have_text value["descricao"]
        expect(items[index]).to have_text value["preco"]
    end
end         

Então("eu vejo as seguintes Informações adicionais:") do |table| 
    infos =  table.rows_hash
    puts infos
    detail = find('#detail')
    expect(detail).to have_text infos["categoria"]
    expect(detail).to have_text infos["descricao"]
    expect(detail).to have_text infos["horarios"]    
end
# Estudando 1.0 Inicio
#     detail = find('#detail')
#     infos =  table.hashes
#     infos.each_with_index do |vale, index|
#         puts vale
#         puts index
#         expect(detail[index]).to have_text vale["Categoria"]
#         expect(detail[index]).to have_text vale["descrição"]
#         expect(detail[index]).to have_text vale["Horarios"]
#   end
  

# Dentro de chaves, não tem conchetes, não é um array
# esse objeto (table.rows_hash) é um data table, uma linha de rash
# {"categoria"=>"Hamburgues", "descricao"=>"40 anos  se esoecializando em trash food.", "horarios"=>"Funciona todos os dias, de 10h ás 22h"}

# em cardapio.feature são vários hashs, então em cada linha ele monta um hash e coloca dentro de uma lista, de um array
# Estudando 1.0 FIM 