After do |scenario|
  if scenario.source_tag_names.include?('@reset_cart')
    while page.has_selector?("input[value='Delete']")
      find("input[value='Delete']").click
    end
  end
end
