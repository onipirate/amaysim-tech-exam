#require 'webdrivers'
require 'watir'
browser = Watir::Browser.new
browser.goto 'http://www.amaysim.com.au'
login_btn=browser.link(href: /my-account\/login/)
browser.wait_until { |b| b.title == "Mobile Plans, Data Plans and Long Expiry Plans | amaysim"}
puts login_btn.exists?
login_btn.click
browser.wait_until { |b| b.title == "My amaysim"}
puts 'Login screen'
username=browser.text_field(id: 'username')
password=browser.text_field(id: 'password')
username.set '0466134574'
password.set 'AWqasde321'
username.value == '0466134574'
login_btn2 = browser.button(value: 'Login')
puts    login_btn2  == browser.button(value: 'Login')
login_btn2.click
browser.wait_until { |b| b.title == "my amaysim | dashboard"}
account_menu=browser.span(text: /account/)
puts account_menu.exists?
account_menu.click
#sleep(5)
x_btn=browser.iframe(id: 'authorization-options-iframe').element(xpath: "/html/body/div/div/a[@href='#']")
x_btn.click
#sleep(5)
yes_btn=browser.iframe(id: 'authorization-options-iframe').element(xpath: "//button[. = 'Yes']")
yes_btn.click
#sleep(5)
refer_link=browser.link(visible_text: 'Refer a friend')
refer_link.click
email_input=browser.iframe(id: 'fb-12741873-1379-4c1e-ac8c-1297e3bc9699').text_field(id: 'a')
email_input.set 'jcsupp@gmail.com'
#sleep(5)
share_btn=browser.iframe(id: 'fb-12741873-1379-4c1e-ac8c-1297e3bc9699').button(id: 'c')
share_btn.click
sleep(5)
browser.close

#auth=browser.iframe(id: 'authorization-options-iframe').element(xpath: "/html/body/div/div/a[@href='#']").exists?
#conf=browser.iframe(id: 'authorization-options-iframe').button(id: "cancelMfaYes")
#browser.iframe(id: 'authorization-options-iframe').element(xpath: "/html/body/div/div/a[@href='#']").click
#browser.iframe(id: 'authorization-options-iframe').element(xpath: "//button[. = 'Yes']").click
#browser.link(visible_text: 'Refer a friend').click
#browser.iframe(id: 'fb-12741873-1379-4c1e-ac8c-1297e3bc9699').text_field(id: 'a').exists?
#browser.iframe(id: 'fb-12741873-1379-4c1e-ac8c-1297e3bc9699').button(id: 'c').click