Given("I am able to open the app") do
  homepage.app_open
end

When("I click to add a new text note") do
  homepage.add_new_note
  homepage.new_text
end

And("create some text") do
  textnote.write_text
end

And("click save") do
  textnote.click_save
end

Then("it should show the note on the homepage") do
  homepage.new_note_displayed
end

When("I click to add a new checklist note") do
  homepage.add_new_note
  homepage.new_checklist
end

And("create a checklist") do
  checklist.add_title
  checklist.click_add_item
  checklist.write_new_item
  checklist.click_ok
end

Then("it should show the checklist on the homepage") do
  homepage.new_note_displayed
end

When("I click the hamburger menu") do
  homepage.click_ham
end

When("click on calendar") do
  homepage.click_calendar
end

Then("it should show me the calendar page") do
  calendar.calendar_displayed
end

Given("there is a note on my homepage") do
  homepage.add_new_note
  homepage.new_text
  textnote.write_text
  textnote.click_save
  homepage.new_note_displayed
end

When("I click on the note") do
  homepage.click_new_note
end

When("click delete") do
  textnote.click_delete
end

Then("it should no longer be on the homepage") do
  expect(homepage.new_note_displayed).to eq false
end

When("click to change the colour") do
  textnote.click_edit
  textnote.click_colour
  textnote.click_green
end

Then("it should change colour") do
  pending
end
