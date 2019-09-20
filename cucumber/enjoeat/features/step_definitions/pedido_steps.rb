
Dado("que eu fechei o pedido com os itens:") do |table|
    @product_list = table.hashes        
    steps %{
        Quando eu adiciono todos os itens 
    }
    @rest_page.cart.close
end
  
Dado("informei os meus dados de entrega:") do |table|
    user = table.rows_hash
    @order_page.fill_user_date(user)
    sleep 3
end
  
Quando("eu finalizo o pedido com {string}") do |string|
    pending # Write code here that turns the phrase above into concrete actions
end
  
Então("devo ver a seguinte mensagem:") do |string|
    pending # Write code here that turns the phrase above into concrete actions
end