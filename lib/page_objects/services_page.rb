

class ServicesPage < BrowserContainer
    def loaded?
      @browser.title == "my amaysim | dashboard" && @browser.url =='https://www.amaysim.com.au/my-account/my-amaysim/services'
    end
    
    def navigate_to_account_page
      account_link.click
      next_page=AccountPage.new(@env, @browser)
      Watir::Wait.until { next_page.loaded? }
      next_page
    end

    private
    
    def account_link
       @browser.span(text: /account/)
    end
end