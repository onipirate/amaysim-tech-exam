class DashboardPage < BrowserContainer
    def loaded?
        @browser.url=='https://www.amaysim.com.au/my-account/my-amaysim/dashboards' && my_dashboard_link.exists?
    end

    def navigate_to_refer_friend_page
        refer_friend_link.click
        next_page=ReferFriendPage.new(@browser)
        Watir::Wait.until {next_page.loaded?}
        next_page
    end

    private

    def my_dashboard_link
        @browser.element(xpath: "//div/a[contains(text(), 'My dashboard')]")
    end

    def refer_friend_link
        @browser.link(visible_text: 'Refer a friend')
    end
end