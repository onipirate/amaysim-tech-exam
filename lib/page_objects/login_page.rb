

class LoginPage < BrowserContainer
   def loaded?
     @browser.title=="My amaysim"
   end

   def login_as(username,password)
    username_field.set username
    password_field.set password
    login_button.click
    next_page = ServicesPage.new(@browser)
    Watir::Wait.until { next_page.loaded? }
    next_page
  end


   private

   def username_field
     @browser.text_field(id: 'username')
   end

   def password_field
     @browser.text_field(id: 'password')
   end

   def login_button
     @browser.button(value: 'Login')
   end
end