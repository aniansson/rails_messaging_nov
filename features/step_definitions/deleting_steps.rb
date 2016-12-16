Given(/^there is users named:$/) do |table|
  table.hashes.each do |hash|
    FactoryGirl.create(:user, hash)
  end
end

Given(/^I am logged in as "([^"]*)"$/) do |name|
  user = User.find_by(name: name)
  login_as(user, scope: :user)
end

Given(/^I send an email to "([^"]*)"$/) do |name|
  steps %Q{
      And I am on the "inbox" page
      And I click "Compose"
      When I select "#{name}" from recipients
      And I fill in "Subject" with "subject"
      And I fill in "Message" with "message to #{name}"
      When I click "Send Message"
      Then I should see "Your message was successfully sent"
  }
end

Given(/^I click on "([^"]*)"$/) do |arg1|
  pending # Write code here that turns the phrase above into concrete actions
end

Given(/^that I am logged in as "([^"]*)"$/) do |arg1|
  pending # Write code here that turns the phrase above into concrete actions
end

Given(/^I click on the "([^"]*)" page$/) do |arg1|
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^I should have "([^"]*)" message$/) do |arg1|
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^I click on the "([^"]*)" link$/) do |arg1|
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^I should have "([^"]*)" messages$/) do |arg1|
  pending # Write code here that turns the phrase above into concrete actions
end
