class Navigate < SitePrism::Page
  element :sign_in_button, "#nav-link-yourAccount"
  element :cart_button, "#nav-cart"

  def to_login
    sign_in_button.click
  end

  def to_basket
    cart_button.click
  end
end
