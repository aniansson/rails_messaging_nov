Given(/^that I'm not loged in$/) do
  logout
end

Given(/^I am on the "([^"]*)" page$/) do |page|
  if page == "/"
    visit root_path
  end
end

Given(/^I click "([^"]*)"$/) do |arg1|
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^I shoud be on the "([^"]*)" page$/) do |arg1|
  pending # Write code here that turns the phrase above into concrete actions
end
