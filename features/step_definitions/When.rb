When(/^put ([^"]*) on the ([^"]*) input$/) do |data,input|
  fill_in(input, :with => data)
end

When(/^click on the ([^"]*) button$/) do |button|
    click_button(button)
end

When(/^[I ]*click on the ([^"]*) text$/) do |text|
    click_on('text')
end

When(/^I visit ([^"]*) link$/) do |link|
  visit(link)
end