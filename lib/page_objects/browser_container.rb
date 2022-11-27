require 'watir'

class BrowserContainer
    def initialize(env, browser)
      @browser = browser
      @env=env
    end
end