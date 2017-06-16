class SearchResultsPage < SitePrism::Page
  def first_product_title
    page.first(:css, 'div.s-item-container h2').text.downcase
  end
end
