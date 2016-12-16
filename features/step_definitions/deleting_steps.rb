Given(/^the following users exist:$/) do |table|
  table.hashes.each do |hash|
    FactoryGirl.create(:user, hash)
  end
end

Given(/^"([^"]*)" sends a message to "([^"]*)"$/) do |sender, name|
  user = User.find_by(name: sender)
  receiver = User.find_by(name: name)
  user.send_message(receiver, "body", "content")
end

Then(/^"([^"]*)" should have "([^"]*)" (?:message|messages)$/) do |name, expected_count|
  user = User.find_by(name: name)
  count = user.mailbox.inbox.count
  expect(count).to eq expected_count.to_i
end
