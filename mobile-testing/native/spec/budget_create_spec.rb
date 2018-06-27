require "spec_helper"

describe "testing the budgetwatch app" do

  before(:all) do
    @driver = Appium::Driver.new(opts, true)
    Appium.promote_appium_methods(RSpec::Core::ExampleGroup)
    @driver.start_driver
  end

  # after(:all) do
  #   @driver.driver_quit
  # end

  it "should open the budgetwatch app" do
    find_elements(:id, "protect.budgetwatch:id/action_settings")[0].displayed?
  end

  it "should click on the budget option" do
    find_element(:xpath, "(//android.widget.ImageView[@content-desc='icon'])[1]").click
  end

  it "should click to add a new budget" do
    find_element(:id, "protect.budgetwatch:id/action_add").click
  end

  it "should enter budget values" do
    find_element(:id, "protect.budgetwatch:id/budgetNameEdit").send_keys("TEST")
    find_element(:id, "protect.budgetwatch:id/valueEdit").send_keys("200")
  end

  it "should save the budget" do
    find_element(:id, "protect.budgetwatch:id/action_save").click
  end

  it "should view the budget we just created" do
    find_element(:xpath, "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.LinearLayout[2]/android.widget.RelativeLayout/android.widget.ListView/android.widget.LinearLayout").click
  end

end
