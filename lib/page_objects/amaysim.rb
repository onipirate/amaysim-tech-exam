require_relative 'browser_container'

class Amaysim < BrowserContainer
    def corporate_page
      @corporate_page = CorporatePage.new(@browser)
    end
    
    def login_page
      @login_page = LoginPage.new(@browser)
    end

    def services_page
      @services_page = ServicesPage.new(@browser)
    end

    def account_page
      @account_page = AccountPage.new(@browser)
    end
    
    def refer_friend_page
      @refer_friend_page=ReferFriendPage.new(@browser)
    end

    def dashboard_page
      @dashboad_page=DashboardPage.new(@browser)
    end

    def close
      @browser.close
    end
end