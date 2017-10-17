Given(/^I am on the ([^"]*) page$/) do |page|
  visit(page_path)
end