class Homepage

  def initialize(driver)
    @driver = driver
  end

  SETTINGS_BUTTON_ID = "protect.budgetwatch:id/action_settings"
  BUDGET_XPATH = "(//android.widget.ImageView[@content-desc='icon'])[1]"
  NEW_BUDGET_XPATH = "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.LinearLayout[2]/android.widget.RelativeLayout/android.widget.ListView/android.widget.LinearLayout"

  def check_app_open
    @driver.find_element(:id, SETTINGS_BUTTON_ID).displayed?
  end

  def click_budget
    @driver.find_element(:xpath, BUDGET_XPATH).click
  end

  def budget_saved
    @driver.find_element(:xpath, NEW_BUDGET_XPATH).displayed?
  end

end
