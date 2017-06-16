class HomePage < SitePrism::Page
  set_url "http://www.amazon.co.uk"
  element :sign_in_button, "#nav-link-yourAccount"

  def go_to_login
    sign_in_button.click
  end
end
