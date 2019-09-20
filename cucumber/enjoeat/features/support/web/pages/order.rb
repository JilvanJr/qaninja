
class OrderPage
    include Capybara::DSL

    def fill_user_date(user)
        find('input[formcontrolname=name]').set user[:nome]
        find('input[formcontrolname=email]').set user[:email]
        find('input[formcontrolname=emailConfirmation]').set user[:email]
        find('input[formcontrolname=address]').set user[:rua]
        find('input[formcontrolname=number]').set user[:numero]
        find('input[formcontrolname=optionalAddress]').set user[:complemento]
    end

    def cost_shipping
        div = find("div[class*=col-sm-6]", text: "Frete e Total:")
        div.all("table tbody tr")
    end

end