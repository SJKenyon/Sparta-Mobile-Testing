class Homepage

  def initialize(driver)
    @driver = driver
  end

  NEXT_ID = "com.socialnmobile.dictapps.notepad.color.note:id/textSubtitle"
  SKIP_ID = "com.socialnmobile.dictapps.notepad.color.note:id/btn_skip"
  HOMEPAGE_TEXT_ID = "com.socialnmobile.dictapps.notepad.color.note:id/textTitle"
  ADD_NOTE_ID = "com.socialnmobile.dictapps.notepad.color.note:id/main_btn1"
  NEW_TEXT = "/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.LinearLayout[1]"
  DISPLAYED_ID = "com.socialnmobile.dictapps.notepad.color.note:id/date"
  NEW_CHECKLIST = "/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.LinearLayout[2]"
  HAMBURGER_ID = "com.socialnmobile.dictapps.notepad.color.note:id/img_sidebar"
  CALENDAR_XPATH = "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.RelativeLayout/android.widget.ListView/android.widget.LinearLayout[4]/android.widget.TextView"

  def app_open
    @driver.find_element(:id, NEXT_ID).click
    @driver.find_element(:id, SKIP_ID).click
    @driver.background_app(1)
    @driver.find_element(:id, ADD_NOTE_ID).displayed?
  end

  def add_new_note
    @driver.find_element(:id, ADD_NOTE_ID).click
  end

  def new_text
    @driver.find_element(:xpath, NEW_TEXT).click
  end

  def new_note_displayed
    @driver.find_element(:id, DISPLAYED_ID).displayed?
  end

  def click_new_note
    @driver.find_element(:id, DISPLAYED_ID).click
  end

  def new_checklist
    @driver.find_element(:xpath, NEW_CHECKLIST).click
  end

  def click_ham
    @driver.find_element(:id, HAMBURGER_ID).click
  end

  def click_calendar
    @driver.find_element(:xpath, CALENDAR_XPATH).click
  end

end
