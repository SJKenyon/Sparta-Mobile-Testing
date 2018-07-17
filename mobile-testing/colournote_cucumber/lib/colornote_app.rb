require_relative "pages/homepage.rb"
require_relative "pages/textnote.rb"
require_relative "pages/checklist.rb"
require_relative "pages/calendar.rb"
# require_relative "pages/"

module ColornoteApp

  def homepage
    Homepage.new($driver)
  end

  def textnote
    Textnote.new($driver)
  end

  def checklist
    Checklist.new($driver)
  end

  def calendar
    Calendar.new($driver)
  end

end
