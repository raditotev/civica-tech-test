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
end
