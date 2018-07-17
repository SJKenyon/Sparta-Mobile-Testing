class Calendar

  def initialize(driver)
    @driver = driver
  end

  CALENDAR_VIEW_ID = "com.socialnmobile.dictapps.notepad.color.note:id/month_view"

  def calendar_displayed
    @driver.find_element(:id, CALENDAR_VIEW_ID).displayed?
  end

end
