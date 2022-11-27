require_relative 'browser_container'

class Amaysim < BrowserContainer
    def corporate_page
      @corporate_page = CorporatePage.new(@env,@browser)
    end
    
    def login_page
      @login_page = LoginPage.new(@env,@browser)
    end

    def services_page
      @services_page = ServicesPage.new(@env,@browser)
    end

    def account_page
      @account_page = AccountPage.new(@env,@browser)
    end
    
    def refer_friend_page
      @refer_friend_page=ReferFriendPage.new(@env,@browser)
    end

    def dashboard_page
      @dashboad_page=DashboardPage.new(@env,@browser)
    end

    def close
      @browser.close
    end
end