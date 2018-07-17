require "appium_lib"
require "cucumber"
require_relative "../../lib/colornote_app.rb"

def opts
  {
    caps: {
      :platformName => "Android",
      :deviceName => "emulator-5554",
      :app => "./app/colorNote.apk",
      :autoGrantPermissions => true
    }
  }
end

Appium::Driver.new(opts, true)

World(ColornoteApp)
