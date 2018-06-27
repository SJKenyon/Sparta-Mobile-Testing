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

end
