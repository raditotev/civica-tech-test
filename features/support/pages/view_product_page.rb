class ViewProductPage < SitePrism::Page
  element :price, "#priceblock_ourprice"
  element :add_item_to_basket, "#add-to-cart-button"

  def get_price
    price.text.gsub("£", "").to_i
  end
end
