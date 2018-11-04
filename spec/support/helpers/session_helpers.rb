module Features
  module SessionHelpers
    def sign_up_with(name, email, password, confirmation)
      visit new_user_registration_path
      fill_in "user_name", with: name
      fill_in "user_email", with: email
      fill_in "user_password", with: password
      fill_in "user_password_confirmation", with: confirmation
      click_button "Sign up"
    end
  end
end
