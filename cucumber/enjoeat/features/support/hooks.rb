
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