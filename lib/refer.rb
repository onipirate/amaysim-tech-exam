require_relative 'helpers.rb'

class Refer
  
  def initialize
    @wbrowser=Watir::Browser.new
    @site=Amaysim.new(@wbrowser)
    @site.corporate_page.open
    @site.corporate_page.navigate_to_login_page
  end
  
  def login_as(user,pass)
    @site.login_page.login_as(user,pass)
  end

  def navigate_to_refer_friend_page
    @site.services_page.navigate_to_account_page
    @site.account_page.close_authentication_popups
    @site.dashboard_page.navigate_to_refer_friend_page
  end

  def email_set(email)
    @site.refer_friend_page.send_invite_email(email)
  end

  def title_page
    @wbrowser.title
  end

  def url_page
    @wbrowser.url
  end

  def message
    @site.refer_friend_page.thank_you_message.text()
  end

  def close
    @wbrowser.close
  end

end