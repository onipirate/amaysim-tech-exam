class ReferFriendPage < BrowserContainer
  def loaded?
     share_button.exists?
  end

  def send_invite_email(email)
    send_friend_email_field.set email
    share_button.click
    Watir::Wait.until {thanks_for_sharing_text.exists?}
  end

  def thank_you_message
    thanks_for_sharing_text
  end

  private
  
  def refer_friend_iframe
    @browser.iframe(id: 'fb-12741873-1379-4c1e-ac8c-1297e3bc9699')
  end

  def send_friend_email_field
    refer_friend_iframe.text_field(id: 'a')
  end

  def share_button
    refer_friend_iframe.button(id: 'c')
  end

  def thanks_for_sharing_text
    refer_friend_iframe.element(xpath: "//span/p[contains(text(), 'Thanks for sharing the big love')]")
  end
end