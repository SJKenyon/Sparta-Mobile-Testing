class BudgetPage

  def initialize(driver)
    @driver = driver
  end

  ADD_BUDGET_ID = "protect.budgetwatch:id/action_add"
  NAME_FIELD_ID = "protect.budgetwatch:id/budgetNameEdit"
  VALUE_FIELD_ID = "protect.budgetwatch:id/valueEdit"
  SAVE_ID = "protect.budgetwatch:id/action_save"

  def page_open
    @driver.find_element(:id, ADD_BUDGET_ID).displayed?
  end

  def add_budget
    @driver.find_element(:id, ADD_BUDGET_ID).click
    @driver.find_element(:id, NAME_FIELD_ID).send_keys("TEST")
    @driver.find_element(:id, VALUE_FIELD_ID).send_keys("200")
  end

  def save_budget
    @driver.find_element(:id, SAVE_ID).click
  end

end
