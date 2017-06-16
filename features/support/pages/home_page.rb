class HomePage < SitePrism::Page
  set_url "http://www.amazon.co.uk"
  element :sign_in_button, "#nav-link-yourAccount"
  element :search_box , "#twotabsearchtextbox"
  element :search_button, "div.nav-search-submit input[type='submit']"

  def go_to_login
    sign_in_button.click
  end

  def search_for item
    search_box.set item
    search_button.click
  end
end
