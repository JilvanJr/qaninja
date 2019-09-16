
Dado("que acesso a lista de restaurantes") do
    visit "/restaurants"
end

Quando("eu escolho um restaurante {string}") do |restaurante|                      
    find(".restaurant-item", text: restaurante.upcase).click
    sleep 2
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
    detail = find('#detail')
    expect(detail).to have_text infos["categoria"]
    expect(detail).to have_text infos["descricao"]
    expect(detail).to have_text infos["horarios"]
end
  
# Dentro de chaves, não tem conchetes, não é um array
# esse objeto (table.rows_hash) é um data table, uma linha de rash
# {"categoria"=>"Hamburgues", "descricao"=>"40 anos  se esoecializando em trash food.", "horarios"=>"Funciona todos os dias, de 10h ás 22h"}

# em cardapio.feature são vários hashs, então em cada linha ele monta um hash e coloca dentro de uma lista, de um array
