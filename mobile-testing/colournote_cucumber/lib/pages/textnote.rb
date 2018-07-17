class Textnote

  def initialize(driver)
    @driver = driver
  end

  TEXT_BOX = "com.socialnmobile.dictapps.notepad.color.note:id/edit_note"
  SAVE_ID = "com.socialnmobile.dictapps.notepad.color.note:id/back_btn"
  OPTIONS_ID = "com.socialnmobile.dictapps.notepad.color.note:id/overflow_btn"
  DELETE_XPATH = "/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.LinearLayout[3]"
  DELETE_OK_ID = "android:id/button1"
  EDIT_ID = ""
  COLOUR_ID = "com.socialnmobile.dictapps.notepad.color.note:id/color_btn"
  GREEN_ID = "com.socialnmobile.dictapps.notepad.color.note:id/btn4"

  def write_text
    @driver.find_element(:id, TEXT_BOX).send_keys("HELLO")
  end

  def click_save
    @driver.find_element(:id, SAVE_ID).click
    @driver.find_element(:id, SAVE_ID).click
  end

  def click_delete
    @driver.find_element(:id, OPTIONS_ID).click
    @driver.find_element(:id, DELETE_XPATH).click
    @driver.find_element(:id, DELETE_OK_ID).click
  end

  def click_edit
    @driver.find_element(:id, EDIT_ID).click
  end

  def click_colour
    @driver.find_element(:id, COLOUR_ID).click
  end

  def click_green
    @driver.find_element(:id, GREEN_ID).click
  end

end
