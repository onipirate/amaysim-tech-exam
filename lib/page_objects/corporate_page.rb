

class CorporatePage < BrowserContainer
  include PageObject
  URL='https://www.amaysim.com.au'


  def open
    @browser.goto URL
    self
  end

  def navigate_to_login_page
    login_link.click
    next_page = LoginPage.new(@browser)
    Watir::Wait.until { next_page.loaded? }
    next_page
  end

  private

  def login_link
    @browser.link(href: /my-account\/login/)
  end

end