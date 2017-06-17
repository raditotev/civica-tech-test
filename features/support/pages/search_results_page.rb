class SearchResultsPage < SitePrism::Page
  def first_product_title
    page.first(:css, 'div.s-item-container h2').text.downcase
  end

  def select_first_item
    page.first(:css, 'div.s-item-container a').click
  end
end
