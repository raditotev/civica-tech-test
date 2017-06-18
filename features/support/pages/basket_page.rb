# Creates instances of basket page,
# providing means of access and interaction with UI elements
class BasketPage < SitePrism::Page
  element :subtotal, "#sc-subtotal-amount-activecart span"
  element :delete_button, "input[value='Delete']"
  element :cart_content, "#nav-cart-count"
  element :confirm_text, "#huc-v2-order-row-confirm-text"

  # Returns subtotal value as string
  def get_subtotal
    subtotal.text
  end

  # True if cart is empty
  def cart_empty?
    cart_content.text.to_i == 0
  end

  # Returns true if current page is basket
  def current_page?
    has_subtotal?
  end
end
