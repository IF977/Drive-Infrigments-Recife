Then(/^I should see the text ([^"]*)$/) do |text|
    expect(page).to have_content(text)
end