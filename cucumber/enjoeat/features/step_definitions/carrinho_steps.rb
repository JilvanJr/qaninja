Dado("que o produto desejado é {string}") do |produto|
    @produto_nome = produto    
end
  
Dado("o valor do produto é de {string}") do |valor|
    @produto_valor = valor
end
  
Quando("eu adiciono {int} unidade") do |int|
    find('.menu-item-info-box', text: @produto_nome.upcase).find('.add-to-cart').click
end
  
Então("deve ser adicionado {int} unidade deste item") do |quantidade|
    cart = find('#cart')
    expect(cart).to have_text "(#{quantidade}x) #{@produto_nome}"
end
  
Então("o valor total deve ser de {string}") do |valor_total|
    cart = find('#cart')
    total = cart.find('tr', text: 'Total:').find('td')
    expect(total.text).to eql valor_total
    sleep 3
end
  