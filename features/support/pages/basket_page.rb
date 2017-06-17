class BasketPage < SitePrism::Page
  element :subtotal, "#sc-subtotal-amount-activecart"

  def get_subtotal
    subtotal.text.gsub("£", "").to_i
  end
end
