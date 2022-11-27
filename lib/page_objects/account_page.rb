class AccountPage < BrowserContainer
    def loaded?
      @browser.url=='https://www.amaysim.com.au/my-account/my-amaysim/personal-details' && @browser.title=='My amaysim'
    end

    def close_authentication_popups
      begin
        Watir::Wait.until { authorization_iframe.exists? }
        if authorization_iframe.exists? then
          authorization_close.click
          authorization_yes.click
        end
      rescue => e
        puts "Authorization form is delayed or it does not exists"
      end
      next_page=DashboardPage.new(@env, @browser)
      Watir::Wait.until { next_page.loaded? }
      next_page
    end
    
    private

    def authorization_iframe
      @browser.iframe(id: 'authorization-options-iframe')
    end

    def authorization_close
      authorization_iframe.element(xpath: "/html/body/div/div/a[@href='#']")
    end

    def authorization_yes
      authorization_iframe.element(xpath: "//button[. = 'Yes']")
    end
end