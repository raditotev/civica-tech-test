Before do |scenario|
  $this_is_scenario_one = defined?($this_is_scenario_one) ? false : true

  # Remove screenshots from ./screenshots folder before running new round of tests
  FileUtils.rm_rf(File.join(FileUtils.pwd, "/screenshots/."), secure: true) if $this_is_scenario_one
end

After do |scenario|
  # Remove items from shopping cart
  if scenario.source_tag_names.include?('@reset_cart')
    unless basket_page.cart_empty?
      navigate.to_basket unless basket_page.current_page?
      while basket_page.has_delete_button?
        begin
          basket_page.delete_button.click
        rescue Selenium::WebDriver::Error::StaleElementReferenceError,
               Capybara::ElementNotFound
          # If element doesn't exists - shopping cart is empty
          puts "Cart is empty now."
        end
      end
    end
  end

  # Create screenshots on failure
  if(scenario.failed?)
    screenshots_dir = File.join(FileUtils.pwd, "/screenshots")
    FileUtils.mkdir(screenshots_dir) unless File.directory?(screenshots_dir)
    name_of_scenario = scenario.name.gsub(/\s+/, "_").gsub("/","_")
    page.save_screenshot(screenshots_dir + "/#{name_of_scenario}.png")
    puts "Name of snapshot is #{name_of_scenario}"
    puts "Snapshot is taken"
    puts "#===========================================================#"
    puts "Scenario: #{scenario.name}"
    puts "#===========================================================#"
  end

  # Wait for page to finish loading before browser reset
  home_page.wait_for_page_finish_loading
end
