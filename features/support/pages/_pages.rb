module Pages
  def home_page
    @home_page ||= HomePage.new
  end

  def sign_in_page
    @sign_in_page ||= SignInPage.new
  end

  def search_results_page
    @search_results_page ||= SearchResultsPage.new
  end

  def view_product_page
    @view_product_page ||= ViewProductPage.new
  end

  def basket_page
    @basket_page ||= BasketPage.new
  end

  def navigate
    @navigate ||= Navigate.new
  end
end
