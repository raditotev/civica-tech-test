# Creates instances of search results page,
# providing means of access and interaction with search results
class SearchResultsPage < SitePrism::Page
  element :search_results, "div.s-item-container h2"

  # From a list of products returns first product's title
  # as lower case string
  def first_product_title
    page.first(:css, 'div.s-item-container h2').text.downcase
  end

  # From a list of products, finds first not sponsored link
  # and clicks on it
  def select_first_item
    # Select first result unless it's a sponsored link
    page.all('div.s-item-container').each do |el|
      next if el.has_content?("Sponsored")
      el.first("h2").click
      return
    end
  end
end
