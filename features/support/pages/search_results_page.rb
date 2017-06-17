class SearchResultsPage < SitePrism::Page
  element :search_results, "div.s-item-container h2"

  def first_product_title
    wait_for_search_results
    page.first(:css, 'div.s-item-container h2').text.downcase
  end

  def select_first_item
    wait_for_search_results
    # Select first result unless it's a sponsored link
    page.all('div.s-item-container').each do |el|
      next if el.has_content?("Sponsored")
      el.first("h2").click
      return
    end
  end
end
