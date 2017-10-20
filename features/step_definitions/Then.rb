Then(/^I should see the text ([^"]*)$/) do |text|
    expect(page).to have_content(text)
end

Then(/^I should see the page information$/) do
  expect(page).to have_content "O QUE É INFRAÇÃO DE TRÂNSITO?"
end

Then(/^I should see the page team/) do
  expect(page).to have_content "Members"
end