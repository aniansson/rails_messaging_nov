Given(/^there is users named:$/) do |table|
  table.hashes.each do |hash|
    FactoryGirl.create(:user, hash)
  end
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

Then(/^"([^"]*)" should have "([^"]*)" (?:message|messages)$/) do |name, expected_count|
  user = User.find_by(name: name)
  count = user.mailbox.inbox.count
  expect(count).to eq expected_count.to_i
end
