class BasketPage < SitePrism::Page
  element :subtotal, "#sc-subtotal-amount-activecart span"
  element :delete_button, "input[value='Delete']"
  element :cart_content, "#nav-cart-count"
  element :confirm_text, "#huc-v2-order-row-confirm-text"

  def get_subtotal
    subtotal.text
  end

  def cart_empty?
    cart_content.text.to_i == 0
  end

  def current_page?
    has_subtotal?
  end
end
