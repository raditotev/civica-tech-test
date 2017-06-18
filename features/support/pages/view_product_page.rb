# Creates instances of view product page,
# providing means of access and interaction with UI elements
class ViewProductPage < SitePrism::Page
  element :price, "#priceblock_ourprice"
  element :add_to_basket_button, "#add-to-cart-button"

  def get_price
    price.text
  end

  def add_item_to_basket
    add_to_basket_button.click
  end
end
