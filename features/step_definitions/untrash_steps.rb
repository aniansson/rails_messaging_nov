Then(/^I should see message$/) do |content|
  expect(page).to have_content content
end
