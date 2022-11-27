require_relative 'helpers.rb'

site=Amaysim.new(Watir::Browser.new)
site.corporate_page.open
site.corporate_page.navigate_to_login_page
site.login_page.login_as('0466134574','AWqasde321')
site.services_page.navigate_to_account_page
site.account_page.close_authentication_popups
site.dashboard_page.navigate_to_refer_friend_page
site.refer_friend_page.send_invite_email('jcsupp@gmail.com')
sleep(5)
