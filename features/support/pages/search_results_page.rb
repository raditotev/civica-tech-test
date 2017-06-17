class SearchResultsPage < SitePrism::Page
  def first_product_title
    page.first(:css, 'div.s-item-container h2').text.downcase
  end

  def select_first_item
    # Select first result unless it's a sponsored link
    page.all('div.s-item-container').each do |el|
      next if el.has_content?("Sponsored")
      el.first("h2").click
    end
  end
end
