After do |scenario|
  # Remove items from shopping cart
  if scenario.source_tag_names.include?('@reset_cart')
    unless basket_page.cart_empty?
      navigate.to_basket unless basket_page.current_page?
      while basket_page.has_delete_button?
        begin
          basket_page.delete_button.click
        rescue Selenium::WebDriver::Error::StaleElementReferenceError
          puts "Cart is empty now."
        end
      end
    end
  end
end
