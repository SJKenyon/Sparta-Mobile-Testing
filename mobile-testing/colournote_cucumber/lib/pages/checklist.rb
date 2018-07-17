class Checklist

  def initialize(driver)
    @driver = driver
  end

  TITLE_ID = "com.socialnmobile.dictapps.notepad.color.note:id/edit_title"
  ADD_ITEM_XPATH = "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.RelativeLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.RelativeLayout/android.widget.LinearLayout/android.widget.ListView/android.widget.LinearLayout[1]/android.widget.LinearLayout/android.widget.TextView"
  ADD_ITEM_TEXT_ID = "com.socialnmobile.dictapps.notepad.color.note:id/edit"
  ADD_ITEM_OK_ID = "android:id/button1"

  def add_title
    @driver.find_element(:id, TITLE_ID).send_keys("title")
  end

  def click_add_item
    @driver.find_element(:xpath, ADD_ITEM_XPATH).click
  end

  def write_new_item
    @driver.find_element(:id, ADD_ITEM_TEXT_ID).send_keys("checklist")
  end

  def click_ok
    @driver.find_element(:id, ADD_ITEM_OK_ID).click
  end

end
