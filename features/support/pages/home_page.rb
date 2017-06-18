# Creates instances of home page,
# providing means of access and interaction with UI elements
class HomePage < SitePrism::Page
  set_url "http://www.amazon.co.uk"
  element :search_box , "#twotabsearchtextbox"
  element :search_button, "div.nav-search-submit input[type='submit']"
  element :greeting, "#nav-link-yourAccount"

  # Product search
  def search_for item
    search_box.set item
    search_button.click
  end
end
