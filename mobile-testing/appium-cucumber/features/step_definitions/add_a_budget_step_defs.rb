Given("I can open the app") do
  homepage.check_app_open
end

When("click on budget") do
  homepage.click_budget
end

Then("the budget page opens") do
  budgetpage.page_open
end

When("I enter a budget") do
  homepage.click_budget
  budgetpage.add_budget
end

And("save the budget") do
  budgetpage.save_budget
end

Then("it can be seen on the homepage") do
  homepage.budget_saved
end
