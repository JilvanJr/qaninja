require "base64"
Before do 
    #page.current_window.resize_to(1440, 900)
    @rest_list_page = RestaurantePage.new
    @rest_page = RestaurantPage.new
    @order_page = OrderPage.new
end

Before("@bread_bakery") do
    visit "/restaurants/bread-bakery/menu"
end

Before("@green_food") do
    visit "/restaurants/green-food/menu"
end

After do 
    shot_file = page.save_screenshot("log/screenshot.png")
    shot_b64 = Base64.encode64(File.open(shot_file, "rb").read)
    embed(shot_b64, "image/png", "screenshot") #Cucumber anexa o screenshot no report
end

# Chama o modulo Base64 do Ruby
# Chama o método encode64
# File.open Abrir shot_file que acabou de criar
# read leitura do arquivo
# Vai abrir a imagem, converter para base 64 e gravar em shot_b64


# embed anexa coisas no relatorio
# defini o tipo image/png
# nome do link